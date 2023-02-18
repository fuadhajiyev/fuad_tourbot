package az.code.tourbot.controller;

import az.code.tourbot.services.interfaces.TourService;
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

    private final TourService tourService;

    @Autowired
    public TelegramController(TourService tourService) {
        this.tourService = tourService;
    }

    @PostMapping("/")
    public BotApiMethod<?> onUpdateReceived(@RequestBody Update update) {
        log.info("onUpdateReceived {}", update.getMessage().getText());
        return this.tourService.onUpdateReceived(update);
    }
}
