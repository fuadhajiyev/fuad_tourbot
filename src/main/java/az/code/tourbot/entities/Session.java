package az.code.tourbot.entities;

import az.code.tourbot.enums.LanguageCode;
import lombok.Builder;
import lombok.Data;
import org.springframework.data.annotation.Id;
import org.springframework.data.redis.core.RedisHash;

import java.io.Serializable;

@RedisHash("Session")
@Data
@Builder
public class Session implements Serializable {
    // clientId will be used as a key in redis
    // so, we can find sessions by clientId easily to determine if user has an active session or not
    @Id
    private Long clientId;
    private Long chatId;
    private LanguageCode languageCode;
    private Integer currentQuestionId;
}
