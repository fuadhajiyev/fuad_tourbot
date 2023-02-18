package az.code.tourbot.services.interfaces;

import az.code.tourbot.entities.Question;
import az.code.tourbot.enums.LanguageCode;

public interface SessionService {
    boolean hasSession(Long clientId);

    void createSession(Long clientId, Long chatId);

    boolean deleteSession(Long clientId);

    boolean hasLanguageSelected(Long clientId);

    void setLanguage(Long clientId, LanguageCode languageCode);

    void setCurrentQuestionId(Long clientId, Integer question);

    Integer getCurrentQuestionId(Long clientId);

    LanguageCode getLanguage(Long clientId);
}
