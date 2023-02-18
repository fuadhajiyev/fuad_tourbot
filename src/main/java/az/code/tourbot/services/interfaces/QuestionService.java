package az.code.tourbot.services.interfaces;

import az.code.tourbot.entities.Question;
import az.code.tourbot.enums.LanguageCode;
import lombok.NonNull;
import org.telegram.telegrambots.meta.api.methods.send.SendMessage;

public interface QuestionService {
    SendMessage prepareQuestion(Long chatId, LanguageCode code, Question question);
    SendMessage prepareLanguageQuestion(Long chatId);
    Question getFirstQuestion();
    Question getNextQuestion(Question currentQuestion);
    Question getQuestionById(@NonNull Integer id);
}
