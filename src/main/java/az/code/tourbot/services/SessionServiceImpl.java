package az.code.tourbot.services;

import az.code.tourbot.entities.Session;
import az.code.tourbot.repositories.redis.SessionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class SessionServiceImpl implements SessionService {

    private final SessionRepository repository;

    @Autowired
    public SessionServiceImpl(SessionRepository sessionRepository) {
        this.repository = sessionRepository;
    }

    @Override
    public boolean hasSession(Long clientId) {
        return repository.findById(clientId).isPresent();
    }

    @Override
    public void createSession(Long clientId, Long chatId) {
        Session session = Session.builder()
                .chatId(chatId)
                .clientId(clientId)
                .build();

        repository.save(session);
    }

    @Override
    public boolean deleteSession(Long clientId) {
        // if session exists, delete it
        if (hasSession(clientId)) {
            repository.deleteById(clientId);
            return true;
        }
        return false;
    }

    @Override
    public boolean hasLanguageSelected(Long clientId) {
        Optional<Session> session = repository.findById(clientId);
        if (session.isPresent()) {
            return session.get().getLanguageCode() != null;
        }
        return false;
    }
}
