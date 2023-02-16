package az.code.tourbot;

import az.code.tourbot.bot.Bot;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.telegram.telegrambots.meta.TelegramBotsApi;
import org.telegram.telegrambots.meta.api.methods.updates.SetWebhook;
import org.telegram.telegrambots.meta.exceptions.TelegramApiException;
import org.telegram.telegrambots.updatesreceivers.DefaultBotSession;
import org.telegram.telegrambots.updatesreceivers.DefaultWebhook;

@SpringBootApplication
@Slf4j
public class WebhookbotApplication {

    public static void main(String[] args) {SpringApplication.run(WebhookbotApplication.class, args);}

        @Bean
        public Bot bot(SetWebhook setWebhook) {
            Bot bot = new Bot();

            log.warn("setWebhook: " + setWebhook);
            DefaultWebhook defaultWebhook = new DefaultWebhook();
            defaultWebhook.setInternalUrl("http://localhost:8080");
            TelegramBotsApi botsApi = null;
            try {
                botsApi = new TelegramBotsApi(DefaultBotSession.class);
            } catch (TelegramApiException e) {
                log.error("cannot create TelegramBotsApi", e);
            }
            try {
                botsApi.registerBot(bot, setWebhook);
            } catch (TelegramApiException e) {
                log.error("cannot register bot", e);
            }

            log.warn("registered bot");
            return bot;
        }


        @Bean
        public SetWebhook setWebhookInstance() {
            return SetWebhook.builder().url("https://ba6b-82-194-17-140.eu.ngrok.io").build();
        }


}
