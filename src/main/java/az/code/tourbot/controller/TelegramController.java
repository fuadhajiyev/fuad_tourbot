package az.code.tourbot.controller;

import az.code.tourbot.entities.Session;
import az.code.tourbot.repositories.redis.SessionRepository;
import az.code.tourbot.services.TourService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.telegram.telegrambots.meta.api.methods.BotApiMethod;
import org.telegram.telegrambots.meta.api.objects.Update;

import java.util.UUID;


@RestController
@Slf4j
public class TelegramController {

    private final TourService tourService;
    private final SessionRepository sessionRepository;

    @Autowired
    public TelegramController(TourService tourService, SessionRepository repository) {
        this.tourService = tourService;
        this.sessionRepository = repository;
    }

    @PostMapping("/")
    public BotApiMethod<?> onUpdateReceived(@RequestBody Update update) {
        log.info("onUpdateReceived", update.getMessage().getText());


        long chatId = update.getMessage().getChatId();
        long clientId = update.getMessage().getFrom().getId();
        Session session = Session.builder()
                .chatId(chatId)
                .clientId(clientId)
                .build();

        sessionRepository.save(session);

        log.info("Redis Sessions: {}", sessionRepository.findById(String.valueOf(clientId)).get());

        return this.tourService.onUpdateReceived(update);
    }
}
