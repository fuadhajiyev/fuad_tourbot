package az.code.tourbot.services;

import az.code.tourbot.services.interfaces.QuestionService;
import az.code.tourbot.services.interfaces.SessionService;
import az.code.tourbot.services.interfaces.TourService;
import org.springframework.stereotype.Service;
import org.telegram.telegrambots.meta.api.methods.send.SendMessage;
import org.telegram.telegrambots.meta.api.objects.Message;
import org.telegram.telegrambots.meta.api.objects.Update;

@Service
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


        return new SendMessage(chatId.toString(), "Incorrect Command");
    }


}
