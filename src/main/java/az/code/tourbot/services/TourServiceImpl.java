package az.code.tourbot.services;


import az.code.tourbot.conf.RabbitConfiguration;
import az.code.tourbot.entities.Question;
import az.code.tourbot.enums.LanguageCode;
import az.code.tourbot.services.interfaces.QuestionService;
import az.code.tourbot.services.interfaces.SessionService;
import az.code.tourbot.services.interfaces.TourService;
import az.code.tourbot.utils.Messages;
import az.code.tourbot.utils.Validator;
import lombok.extern.slf4j.Slf4j;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.telegram.telegrambots.meta.api.methods.send.SendMessage;
import org.telegram.telegrambots.meta.api.objects.Message;
import org.telegram.telegrambots.meta.api.objects.Update;

import java.util.Optional;
import java.util.UUID;
import java.util.stream.Stream;

@Service
@Slf4j
public class TourServiceImpl implements TourService {

    private SessionService sessionService;
    private QuestionService questionService;
    private RabbitTemplate rabbitTemplate;

    @Autowired
    public TourServiceImpl(SessionService sessionService, QuestionService questionService, RabbitTemplate rabbitTemplate) {
        this.sessionService = sessionService;
        this.questionService = questionService;
        this.rabbitTemplate = rabbitTemplate;
    }

    @Override
    public SendMessage onUpdateReceived(Update update) {
        if (update.hasMessage() && update.getMessage().hasText()) {
            return handleCommand(update.getMessage());
        }

        return null;
    }

    @Override
    public SendMessage handleCommand(Message message) {
        Long chatId = message.getChatId();
        Long clientId = message.getFrom().getId();

        if (message.getText().equalsIgnoreCase("/start")) {
            if (sessionService.hasSession(clientId)) {
                return new SendMessage(chatId.toString(), "You have already started!");
            }

            sessionService.createSession(message.getChatId(), clientId);
            return questionService.prepareLanguageQuestion(chatId);

        } else if (message.getText().equalsIgnoreCase("/stop")) {

            if (sessionService.hasSession(clientId)) {
                sessionService.deleteSession(clientId);
                return new SendMessage(chatId.toString(), "Session Stopped!");
            }

            return new SendMessage(chatId.toString(), "You have not started yet");
        } else if (message.getText().equalsIgnoreCase("/answers")) {
            if (sessionService.getAnswers(clientId) != null) {
                sessionService.getAnswers(clientId).forEach((k, v) -> log.info(k + " : " + v));
            }
            return new SendMessage(chatId.toString(), "Cavablar logda gosterildi");
        }

        return handleMessage(message);
    }


    private SendMessage handleMessage(Message message) {
        Long chatId = message.getChatId();
        Long clientId = message.getFrom().getId();
        String text = message.getText();

        if (!sessionService.hasSession(clientId)) {
            return new SendMessage(chatId.toString(), "You have not started yet");
        }

        // check if session exists and current question is null (that means user has selected language)
        if (!sessionService.hasLanguageSelected(clientId)) {
            // check if language is valid
            if (Stream.of(LanguageCode.values()).anyMatch(l -> l.name().equalsIgnoreCase(text))) {
                // set language
                sessionService.setLanguage(clientId, LanguageCode.valueOf(text));
                // get first question
                Question question = questionService.getFirstQuestion();
                sessionService.setCurrentQuestionId(clientId, question.getId());
                // prepare question
                return questionService.prepareQuestion(chatId, LanguageCode.valueOf(text), question);
            }
        } else {
            LanguageCode languageCode = sessionService.getLanguage(clientId);

            // get current question
            Integer questionId = sessionService.getCurrentQuestionId(clientId);
            if (questionId == null) {
                return new SendMessage(chatId.toString(), "Xəta baş verdi");
            }

            if (sessionService.isLastQuestion(clientId)) {
                UUID sessionId = sessionService.getSessionId(clientId);
                log.info("Last question. Sending to RabbitMQ. SessionId: {}", sessionId);
                rabbitTemplate.convertAndSend(RabbitConfiguration.SESSION_QUEUE, sessionId);
                return new SendMessage(chatId.toString(), Messages.noMoreQuestionMessage(languageCode));
            }

            Question question = questionService.getQuestionById(questionId);

            if (Validator.validateAnswerForQuestion(text, question, languageCode)) {

                sessionService.saveAnswer(clientId, text);

                // get next question
                Optional<Question> nextQuestion = questionService.getNextQuestion(question);
                if (nextQuestion.isEmpty()) {
                    return new SendMessage(chatId.toString(), Messages.successMessage(languageCode));
                }


                sessionService.setCurrentQuestionId(clientId, nextQuestion.get().getId());
                // prepare question
                return questionService.prepareQuestion(chatId, languageCode, nextQuestion.get());
            }
        }


        return new SendMessage(chatId.toString(), "Incorrect Command");
    }


}
