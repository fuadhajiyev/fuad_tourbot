package az.code.tourbot.utils;

import org.telegram.telegrambots.meta.api.objects.replykeyboard.ReplyKeyboardMarkup;
import org.telegram.telegrambots.meta.api.objects.replykeyboard.buttons.KeyboardRow;

import java.util.ArrayList;
import java.util.List;

public class TelegramHelper {

    public static ReplyKeyboardMarkup getKeyboard(List<String> options) {
        ReplyKeyboardMarkup keyboardMarkup = new ReplyKeyboardMarkup();
        keyboardMarkup.setSelective(true);
        keyboardMarkup.setResizeKeyboard(true);
        keyboardMarkup.setOneTimeKeyboard(true);

        List<KeyboardRow> keyboard = new ArrayList<>();

        options.forEach(option -> {
            KeyboardRow row = new KeyboardRow();
            row.add(option);
            keyboard.add(row);
        });

        keyboardMarkup.setKeyboard(keyboard);
        return keyboardMarkup;
    }
}
