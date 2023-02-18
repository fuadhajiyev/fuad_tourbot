package az.code.tourbot.services;

import az.code.tourbot.services.interfaces.QuestionService;
import az.code.tourbot.services.interfaces.SessionService;
import az.code.tourbot.services.interfaces.TourService;
import az.code.tourbot.entities.Option;
import az.code.tourbot.entities.Question;
import az.code.tourbot.enums.LanguageCode;
import az.code.tourbot.enums.QuestionType;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.telegram.telegrambots.meta.api.methods.send.SendMessage;
import org.telegram.telegrambots.meta.api.objects.Message;
import org.telegram.telegrambots.meta.api.objects.Update;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.stream.Stream;

@Service
@Slf4j
public class TourServiceImpl implements TourService {

    private SessionService sessionService;
    private QuestionService questionService;

    public TourServiceImpl(SessionService sessionService, QuestionService questionService) {
        this.sessionService = sessionService;
        this.questionService = questionService;
    }

    @Override
    public SendMessage onUpdateReceived(Update update) {
        return handleCommand(update.getMessage());
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
                log.info("Set questionId: {} into session", question);
                // prepare question
                return questionService.prepareQuestion(chatId, LanguageCode.valueOf(text), question);
            }
        } else {
            // get current question
            Integer questionId = sessionService.getCurrentQuestionId(clientId);
            log.info("get current questionId: {} from session", questionId);
            Question question = questionService.getQuestionById(questionId);
            LanguageCode languageCode = sessionService.getLanguage(clientId);

            if (question != null && question.getQuestionType().equals(QuestionType.OPTION)) {
                List<String> possibleAnswers = new ArrayList<>();
                Set<Option> options = question.getOptions();

                for (Option option : options) {
                    log.info("translations: {}", option.getOptionTranslation());
                    option.getOptionTranslation().stream().filter(
                                    optionTranslation -> optionTranslation.getLanguageCode().equals(languageCode))
                            .forEach(optionTranslation -> possibleAnswers.add(optionTranslation.getText()));
                }

                if (possibleAnswers.contains(text)) {
                    // get next question
                    Question nextQuestion = questionService.getNextQuestion(question);
                    sessionService.setCurrentQuestionId(clientId, nextQuestion.getId());
                    // prepare question
                    return questionService.prepareQuestion(chatId, languageCode, nextQuestion);
                }
            }
        }


        return new SendMessage(chatId.toString(), "Incorrect Command");
    }


}
