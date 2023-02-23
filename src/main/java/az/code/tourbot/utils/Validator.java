package az.code.tourbot.utils;

import az.code.tourbot.entities.Option;
import az.code.tourbot.entities.Question;
import az.code.tourbot.enums.LanguageCode;
import az.code.tourbot.enums.QuestionType;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

public class Validator {

    public static boolean validateAnswerForQuestion(String answer, Question question, LanguageCode languageCode) {
        if (question.getQuestionType().equals(QuestionType.TEXT)) return true;

        List<String> possibleAnswers = new ArrayList<>();
        Set<Option> options = question.getOptions();

        for (Option option : options) {
            option.getOptionTranslation().stream().filter(
                            optionTranslation -> optionTranslation.getLanguageCode().equals(languageCode))
                    .forEach(optionTranslation -> possibleAnswers.add(optionTranslation.getText()));
        }

        return possibleAnswers.contains(answer);
    }
}
