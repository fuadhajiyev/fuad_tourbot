package az.code.tourbot.services;

import az.code.tourbot.entities.Session;
import az.code.tourbot.enums.LanguageCode;
import az.code.tourbot.repositories.redis.SessionRepository;
import az.code.tourbot.services.interfaces.QuestionService;
import az.code.tourbot.services.interfaces.SessionService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;
import java.util.Optional;
import java.util.UUID;

@Service
@Slf4j
public class SessionServiceImpl implements SessionService {

    private final SessionRepository repository;
    private final QuestionService questionService;

    @Autowired
    public SessionServiceImpl(SessionRepository sessionRepository, QuestionService questionService) {
        this.repository = sessionRepository;
        this.questionService = questionService;
    }

    @Override
    public boolean hasSession(Long clientId) {
        Optional<Session> session = repository.findByClientId(clientId);
        log.info("Client {} has session: {}", clientId, session.isPresent());
        return session.isPresent();
    }

    @Override
    public void createSession(Long clientId, Long chatId) {
        Session session = Session.builder()
                .uuid(UUID.randomUUID())
                .chatId(chatId)
                .clientId(clientId)
                .answers(new HashMap<>())
                .build();

        repository.save(session);
    }

    @Override
    public boolean deleteSession(Long clientId) {
        // if session exists, delete it
        Optional<Session> session = repository.findByClientId(clientId);
        if (session.isPresent()) {
            repository.delete(session.get());
            return true;
        }
        return false;
    }

    @Override
    public boolean hasLanguageSelected(Long clientId) {
        Optional<Session> session = repository.findByClientId(clientId);
        if (session.isPresent()) {
            return session.get().getLanguageCode() != null;
        }
        return false;
    }

    @Override
    public void setLanguage(Long clientId, LanguageCode languageCode) {
        Optional<Session> session = repository.findByClientId(clientId);
        if (session.isPresent()) {
            session.get().setLanguageCode(languageCode);
            repository.save(session.get());
        }
    }

    @Override
    public void setCurrentQuestionId(Long clientId, Integer questionId) {
        Optional<Session> session = repository.findByClientId(clientId);
        if (session.isPresent()) {
            session.get().setCurrentQuestionId(questionId);
            repository.save(session.get());
        }
    }

    @Override
    public Integer getCurrentQuestionId(Long clientId) {
        Optional<Session> session = repository.findByClientId(clientId);
        return session.map(Session::getCurrentQuestionId).orElse(null);
    }

    @Override
    public LanguageCode getLanguage(Long clientId) {
        Optional<Session> session = repository.findByClientId(clientId);
        return session.map(Session::getLanguageCode).orElse(null);
    }

    @Override
    public boolean isLastQuestion(Long clientId) {
        Optional<Session> session = repository.findByClientId(clientId);
        if (session.isPresent() && session.get().getCurrentQuestionId() != null) {
            return questionService.isLastQuestion(session.get().getCurrentQuestionId());
        }
        return false;
    }

    @Override
    public void saveAnswer(Long clientId, String answer) {
        Optional<Session> session = repository.findByClientId(clientId);
        if (session.isPresent()) {
            Map<Integer, String> answers = session.get().getAnswers() != null ? session.get().getAnswers() : new HashMap<>();
            answers.put(session.get().getCurrentQuestionId(), answer);
            session.get().setAnswers(answers);
            repository.save(session.get());
        }
    }

    @Override
    public Map<Integer, String> getAnswers(Long clientId) {
        Optional<Session> session = repository.findByClientId(clientId);
        if (session.isPresent() && session.get().getAnswers() != null) {
            return session.get().getAnswers();
        }
        return null;
    }

    @Override
    public UUID getSessionId(Long clientId) {
        Optional<Session> session = repository.findByClientId(clientId);
        return session.map(Session::getUuid).orElse(null);
    }
}
