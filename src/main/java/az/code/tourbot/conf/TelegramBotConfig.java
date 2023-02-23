package az.code.tourbot.conf;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;

@ConfigurationProperties(prefix = "telegrambot")
@Data
public class TelegramBotConfig {

    private String username;
    private String webhookUrl;
    private String token;
}
