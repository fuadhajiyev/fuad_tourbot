package az.code.tourbot.controller;

import az.code.tourbot.bot.Bot;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.telegram.telegrambots.meta.api.methods.BotApiMethod;
import org.telegram.telegrambots.meta.api.objects.Update;


@RestController
@Slf4j
public class TelegramController {

    private Bot bot;

    @Autowired
    public TelegramController(Bot bot) {
        this.bot = bot;
    }

    @PostMapping("/")
    public BotApiMethod<?> onUpdateReceived(@RequestBody Update update) {
        log.info("onUpdateReceived", update.getMessage().getText());
        log.warn(update.getMessage().getText());
        return bot.onWebhookUpdateReceived(update);
    }
}
