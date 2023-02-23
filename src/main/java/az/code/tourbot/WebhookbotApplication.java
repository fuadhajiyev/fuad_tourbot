package az.code.tourbot;

import az.code.tourbot.conf.TelegramBotConfig;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.Bean;
import org.springframework.web.client.RestTemplate;
import org.telegram.telegrambots.meta.api.methods.updates.SetWebhook;

@SpringBootApplication
@Slf4j
@EnableCaching
@EnableConfigurationProperties(TelegramBotConfig.class)
public class WebhookbotApplication implements CommandLineRunner {

    private TelegramBotConfig config;
    private RestTemplate restTemplate;

    public WebhookbotApplication(TelegramBotConfig config) {
        this.config = config;
        this.restTemplate = new RestTemplate();
    }

    public static void main(String[] args) {SpringApplication.run(WebhookbotApplication.class, args);}

        @Bean
        public SetWebhook setWebhookInstance() {
            return SetWebhook.builder().url(config.getWebhookUrl()).build();
        }


    @Override
    public void run(String... args) throws Exception {
        log.info("Webhook URL: {}", config.getWebhookUrl());
        log.info("Bot Token: {}", config.getToken());

        String url = "https://api.telegram.org/bot" + config.getToken() + "/setWebhook?url=" + config.getWebhookUrl();

        // send http request to telegram api to set webhook
        String response = this.restTemplate.getForObject(url, String.class);

        log.info("Response: {}", response);
    }
}
