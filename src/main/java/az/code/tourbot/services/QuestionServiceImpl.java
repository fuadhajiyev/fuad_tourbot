package az.code.tourbot.services;

import az.code.tourbot.entities.Question;
import az.code.tourbot.enums.LanguageCode;
import az.code.tourbot.services.interfaces.QuestionService;
import az.code.tourbot.utils.TelegramHelper;
import org.springframework.stereotype.Service;
import org.telegram.telegrambots.meta.api.methods.send.SendMessage;

import java.util.List;
import java.util.stream.Stream;

@Service
public class QuestionServiceImpl implements QuestionService {
    @Override
    public SendMessage prepareQuestion(Long chatId, LanguageCode code, Question question) {
        return null;
    }

    @Override
    public SendMessage prepareLanguageQuestion(Long chatId) {
        SendMessage message = new SendMessage(chatId.toString(), "Choose your language");

        List<String> languages = Stream.of(LanguageCode.values())
                .map(LanguageCode::name)
                .toList();
        message.setReplyMarkup(TelegramHelper.getKeyboard(languages));
        return message;
    }
}
