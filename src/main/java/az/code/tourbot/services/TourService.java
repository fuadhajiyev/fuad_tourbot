package az.code.tourbot.services;

import org.telegram.telegrambots.meta.api.methods.send.SendMessage;
import org.telegram.telegrambots.meta.api.objects.Message;
import org.telegram.telegrambots.meta.api.objects.Update;

public interface TourService {
    SendMessage onUpdateReceived(Update update);
    SendMessage handleCommand(Message message);
}
