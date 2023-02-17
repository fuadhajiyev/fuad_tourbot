package az.code.tourbot;

import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.Bean;
import org.telegram.telegrambots.meta.api.methods.updates.SetWebhook;

@SpringBootApplication
@Slf4j
@EnableCaching
public class WebhookbotApplication {

    public static void main(String[] args) {SpringApplication.run(WebhookbotApplication.class, args);}

        @Bean
        public SetWebhook setWebhookInstance() {
            return SetWebhook.builder().url("https://ba6b-82-194-17-140.eu.ngrok.io").build();
        }


}
