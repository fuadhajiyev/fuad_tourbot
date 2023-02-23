package az.code.tourbot.utils;

import az.code.tourbot.enums.LanguageCode;

public class Messages {
    public static String successMessage(LanguageCode languageCode) {
        switch (languageCode) {
            case AZ:
                return "Əməliyyat uğurla yerinə yetirildi";
            case EN:
                return "Operation successfully completed";
            case RU:
                return "Операция успешно завершена";
            default:
                return "Operation successfully completed";
        }
    }


    public static String noMoreQuestionMessage(LanguageCode languageCode) {
        switch (languageCode) {
            case AZ:
                return "Əla, sorğunu aldım. Təklifləri hazırlayıb göndərəcəm. Təkrar sorğu göndərmək üçün /stop yaz, daha sonra /start yazaraq yenidən başlaya bilərsən";
            case EN:
                return "Ok, I got your request. I will prepare the offers and send them. To send another request, write /stop, then write /start to start again";
            case RU:
                return "Хорошо, я получил ваш запрос. Я подготовлю предложения и отправлю их. Чтобы отправить другой запрос, напишите /stop, а затем напишите /start, чтобы начать сначала";
            default:
                return "Əla, sorğunu aldım. Təklifləri hazırlayıb göndərəcəm. Təkrar sorğu göndərmək üçün /stop yaz, daha sonra /start yazaraq yenidən başlaya bilərsən";
        }
    }
}
