package az.code.tourbot.services.interfaces;

import az.code.tourbot.entities.Question;
import az.code.tourbot.enums.LanguageCode;
import lombok.NonNull;
import org.telegram.telegrambots.meta.api.methods.send.SendMessage;

import java.util.Optional;

public interface QuestionService {
    SendMessage prepareQuestion(Long chatId, LanguageCode code, Question question);
    SendMessage prepareLanguageQuestion(Long chatId);
    Question getFirstQuestion();
    Optional<Question> getNextQuestion(Question currentQuestion);
    Question getQuestionById(@NonNull Integer id);
    boolean isLastQuestion(Integer questionId);
}
