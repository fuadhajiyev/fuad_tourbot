package az.code.tourbot.bot;

import org.telegram.telegrambots.bots.TelegramWebhookBot;
import org.telegram.telegrambots.meta.api.methods.BotApiMethod;
import org.telegram.telegrambots.meta.api.methods.send.SendMessage;
import org.telegram.telegrambots.meta.api.objects.Update;

public class Bot extends TelegramWebhookBot {
    @Override
    public String getBotUsername() {
        return "guiii09_bot";
    }

    @Override
    public String getBotToken() {
        return "6018521520:AAHIu4Y35dmQ_KUAyTJ-5GWS7lnAyokbgHU";
    }

    @Override
    public BotApiMethod<?> onWebhookUpdateReceived(Update update) {
        String chatId = update.getMessage().getChatId().toString();
        String clientId = update.getMessage().getFrom().getId().toString();

        return new SendMessage(chatId,"Aleykum salam   clientid = " + clientId);
    }

    @Override
    public String getBotPath() {
        return "/test";
    }
}