package az.code.tourbot.services;

import org.springframework.stereotype.Service;
import org.telegram.telegrambots.meta.api.methods.send.SendMessage;
import org.telegram.telegrambots.meta.api.objects.Message;
import org.telegram.telegrambots.meta.api.objects.Update;

@Service
public class TourServiceImpl implements TourService{

    @Override
    public SendMessage onUpdateReceived(Update update) {
        return handleCommand(update.getMessage());
    }

    @Override
    public SendMessage handleCommand(Message message) {
        String chatId = message.getChatId().toString();
        String clientId = message.getFrom().getId().toString();

        if (message.getText().equalsIgnoreCase("/start")) {
            return new SendMessage(chatId, "Started!");
        } else if (message.getText().equalsIgnoreCase("/stop")) {
            return new SendMessage(chatId, "Stopped!");
        }

        return new SendMessage(chatId, "Incorrect Command");
    }
}
