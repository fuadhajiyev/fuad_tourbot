package az.code.tourbot.services.interfaces;

public interface SessionService {
    boolean hasSession(Long clientId);

    void createSession(Long clientId, Long chatId);

    boolean deleteSession(Long clientId);

    boolean hasLanguageSelected(Long clientId);
}
