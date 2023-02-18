package az.code.tourbot.services;

import az.code.tourbot.entities.Option;
import az.code.tourbot.entities.OptionTranslation;
import az.code.tourbot.entities.Question;
import az.code.tourbot.entities.QuestionTranslation;
import az.code.tourbot.enums.LanguageCode;
import az.code.tourbot.services.interfaces.QuestionService;
import az.code.tourbot.enums.QuestionType;
import az.code.tourbot.repositories.QuestionRepository;
import az.code.tourbot.utils.TelegramHelper;
import lombok.NonNull;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.telegram.telegrambots.meta.api.methods.send.SendMessage;
import org.telegram.telegrambots.meta.api.objects.replykeyboard.ReplyKeyboardMarkup;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;
import java.util.OptionalInt;
import java.util.Set;
import java.util.stream.Stream;

@Service
@Slf4j
public class QuestionServiceImpl implements QuestionService {

    @Value("${question.order.ids}")
    private int[] questionOrder;

    private final QuestionRepository questionRepository;

    @Autowired
    public QuestionServiceImpl(QuestionRepository questionRepository) {
        this.questionRepository = questionRepository;
    }

    @Override
    public SendMessage prepareQuestion(Long chatId, LanguageCode code, Question question) {
        Optional<QuestionTranslation> translation = question.getQuestionTranslations().stream()
                .filter(q -> q.getLanguageCode().equals(code))
                .findFirst();

        SendMessage message = new SendMessage(chatId.toString(), question.getText());
        translation.ifPresent(questionTranslation -> message.setText(questionTranslation.getText()));

        if (question.getQuestionType().equals(QuestionType.OPTION)) {
            Set<Option> options = question.getOptions();

            List<String> buttons = new ArrayList<>();

            options.forEach(option -> {
                Optional<OptionTranslation> optionTranslation = option.getOptionTranslation().stream()
                        .filter(q -> q.getLanguageCode().equals(code))
                        .findFirst();

                if (optionTranslation.isPresent()) {
                    buttons.add(optionTranslation.get().getText());
                } else {
                    buttons.add(option.getOption_text());
                }
            });

            ReplyKeyboardMarkup keyboard = TelegramHelper.getKeyboard(buttons);
            message.setReplyMarkup(keyboard);
            return message;
        }


        return message;
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

    @Override
    public Question getFirstQuestion() {
        int firstQuestionId = questionOrder[0];
        Optional<Question> optionalQuestion = questionRepository.findById(firstQuestionId);
        return optionalQuestion.orElse(null);

    }

    @Override
    public Question getNextQuestion(Question currentQuestion) {
        int currentQuestionId = currentQuestion.getId();
        OptionalInt first = Arrays.stream(questionOrder).filter(id -> id > currentQuestionId).findFirst();

        if (first.isPresent()) {
            int nextQuestionId = first.getAsInt();
            Optional<Question> optionalQuestion = questionRepository.findById(nextQuestionId);
            return optionalQuestion.orElse(null);
        }

        return null;
    }

    @Override
    public Question getQuestionById(@NonNull Integer id) {
        Optional<Question> optionalQuestion = questionRepository.findById(id);
        return optionalQuestion.orElse(null);
    }
}
