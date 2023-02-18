-- 1 - az
-- 2 - en
-- 3 - ru

INSERT INTO languages VALUES (1, 'Az');
INSERT INTO languages VALUES (2, 'En');
INSERT INTO languages VALUES (3, 'Ru');

INSERT INTO question_type VALUES (1, 'Text');
INSERT INTO question_type VALUES (2, 'Option');

INSERT INTO questions (id, question_type_id, text) VALUES (1, 2,'Könlündən necə bir səyahət keçir? 🤔');
INSERT INTO question_translation VALUES (1, 'Könlündən necə bir səyahət keçir? 🤔',1,1);
INSERT INTO question_translation VALUES (2,'Choose the type of tour you prefer 🤔' 2, 1);
INSERT INTO question_translation VALUES (3,'Выбери вид отдыха: 🤔',3,1);

INSERT INTO options VALUES (1, 'İstirahət-gəzinti', 1);
INSERT INTO options VALUES (2, 'Aktiv istirahət', 1);
INSERT INTO options VALUES (3, 'Ekskursiya', 1);
INSERT INTO options VALUES (4, 'Fərq etməz', 1);

INSERT INTO option_translations (text, language_id, option_id) VALUES ('İstirahət-gəzinti', 1, 1);
INSERT INTO option_translations (text, language_id, option_id) VALUES ('Relax and walking', 2, 1);
INSERT INTO option_translations (text, language_id, option_id) VALUES ('Отдых и прогулки', 3, 1);

INSERT INTO option_translations (text, language_id, option_id) VALUES ('Aktiv istirahət', 1, 2);
INSERT INTO option_translations (text, language_id, option_id) VALUES ('Active tourism', 2, 2);
INSERT INTO option_translations (text, language_id, option_id) VALUES ('Активный туризм', 3, 2);

INSERT INTO option_translations (text, language_id, option_id) VALUES ('Ekskursiya', 1, 3);
INSERT INTO option_translations (text, language_id, option_id) VALUES ('Excursion', 2, 3);
INSERT INTO option_translations (text, language_id, option_id) VALUES ('Экскурсия', 3, 3);

INSERT INTO option_translations (text, language_id, option_id) VALUES ('Fərq etməz', 1, 4);
INSERT INTO option_translations (text, language_id, option_id) VALUES ('Any type', 2, 4);
INSERT INTO option_translations (text, language_id, option_id) VALUES ('Любой тип', 3, 4);
-- =============================================================================================
INSERT INTO options VALUES (5, 'Yalnız bilet', 2);
INSERT INTO options VALUES (6, 'Yalnız otel', 2);
INSERT INTO options VALUES (7, 'Hər şey daxil', 2);

INSERT INTO option_translations (text, language_id, option_id) VALUES ('Yalnız bilet', 1, 5);
INSERT INTO option_translations (text, language_id, option_id) VALUES ('Ticket only', 2, 5);
INSERT INTO option_translations (text, language_id, option_id) VALUES ('Только билет', 3, 5);

INSERT INTO option_translations (text, language_id, option_id) VALUES ('Yalnız otel', 1, 6);
INSERT INTO option_translations (text, language_id, option_id) VALUES ('Hotel only', 2, 6);
INSERT INTO option_translations (text, language_id, option_id) VALUES ('All inclusive', 3, 6);

INSERT INTO option_translations (text, language_id, option_id) VALUES ('Hər şey daxil', 1, 7);
INSERT INTO option_translations (text, language_id, option_id) VALUES ('All inclusive', 2, 7);
INSERT INTO option_translations (text, language_id, option_id) VALUES ('Все включено', 3, 7);

-- =============================================================================================
INSERT INTO options VALUES (8, 'Ölkədaxili', 3);
INSERT INTO options VALUES (9, 'Ölkəxarici', 3);

INSERT INTO option_translations (text, language_id, option_id) VALUES ('Ölkədaxili', 1, 8);
INSERT INTO option_translations (text, language_id, option_id) VALUES ('Domestic', 2, 8);
INSERT INTO option_translations (text, language_id, option_id) VALUES ('Bнутри страны', 3, 8);

INSERT INTO option_translations (text, language_id, option_id) VALUES ('Ölkəxarici', 1, 9);
INSERT INTO option_translations (text, language_id, option_id) VALUES ('Abroad', 2, 9);
INSERT INTO option_translations (text, language_id, option_id) VALUES ('За границей', 3, 9);

-- =============================================================================================

INSERT INTO options VALUES (10, 'Qrup', 4);
INSERT INTO options VALUES (11, 'Fərdi', 4);

INSERT INTO option_translations (text, language_id, option_id) VALUES ('Qrup', 1, 10);
INSERT INTO option_translations (text, language_id, option_id) VALUES ('Group', 2, 10);
INSERT INTO option_translations (text, language_id, option_id) VALUES ('Группа', 3, 10);

INSERT INTO option_translations (text, language_id, option_id) VALUES ('Fərdi', 1, 11);
INSERT INTO option_translations (text, language_id, option_id) VALUES ('Individual', 2, 11);
INSERT INTO option_translations (text, language_id, option_id) VALUES ('Индивидуальный', 3, 11);

-- =============================================================================================
INSERT INTO options VALUES (12, 'Bot təklif etsin', 5);
INSERT INTO options VALUES (13, 'Öz istədiyim yerə', 5);

INSERT INTO option_translations (text, language_id, option_id) VALUES ('Bot təklif etsin', 1, 12);
INSERT INTO option_translations (text, language_id, option_id) VALUES ('Bot can offer', 2, 12);
INSERT INTO option_translations (text, language_id, option_id) VALUES ('Пусть бот подскажет', 3, 12);

INSERT INTO option_translations (text, language_id, option_id) VALUES ('Öz istədiyim yerə', 1, 13);
INSERT INTO option_translations (text, language_id, option_id) VALUES ('Yes I know the destination', 2, 13);
INSERT INTO option_translations (text, language_id, option_id) VALUES ('Да, я знаю пункт назначения', 3, 13);








INSERT INTO questions
VALUES (2, 'Necə bir təklif səni maraqlandırır?💭', 2);
INSERT INTO question_translation
VALUES (4, 'Necə bir təklif səni maraqlandırır?💭', 1,2 );
INSERT INTO question_translation
VALUES (5, 'What kind of offer do you like to receive?💭', 2, 2);
INSERT INTO question_translation
VALUES (6, 'Какое предложение вас интересует? 💭', 3, 2);

INSERT INTO questions
VALUES (3, 'Ölkədaxili yoxsa Ölkəxarici?', 2);
INSERT INTO question_translation
VALUES (7, 'Ölkədaxili yoxsa Ölkəxarici?', 1, 3);
INSERT INTO question_translation
VALUES (8, 'Domestic or Abroad?', 2, 3);
INSERT INTO question_translation
VALUES (9, 'Внутри страны или за границей?', 3, 3);

INSERT INTO questions
VALUES (4, 'Səyahət tipi?', 2);
INSERT INTO question_translation
VALUES (10, 'Səyahət tipi?', 1, 4);
INSERT INTO question_translation
VALUES (11, 'Type of travel?', 2, 4);
INSERT INTO question_translation
VALUES (12, 'Тип путешествия?', 3, 4);

INSERT INTO questions
VALUES (5, 'Hara getmək istəyirsən? 🏞?', 2);
INSERT INTO question_translation
VALUES (13, 'Hara getmək istəyirsən? 🏞?', 1, 5);
INSERT INTO question_translation
VALUES (14, 'Do you know exact destination? 🏞', 2, 5);
INSERT INTO question_translation
VALUES (15, 'Знаешь куда хочешь поехать? 🏞', 3, 5);

INSERT INTO questions
VALUES (6, 'Hansı şəhərdən yola düşəcəksən?📍', 1);
INSERT INTO question_translation
VALUES (16, 'Hansı şəhərdən yola düşəcəksən?📍', 1, 6);
INSERT INTO question_translation
VALUES (17, 'Which city you are traveling from?📍', 2, 6);
INSERT INTO question_translation
VALUES (18, 'Из какого города выезжаешь?📍', 3, 6);

INSERT INTO questions
VALUES (7, 'Səyahətin başlanma tarixini seç: 📅', 1);
INSERT INTO question_translation
VALUES (19, 'Səyahətin başlanma tarixini seç: 📅', 1, 7);
INSERT INTO question_translation
VALUES (20, 'Choose start date of your journey: 📅', 2, 7);
INSERT INTO question_translation
VALUES (21, 'Выбери дату начала поездки: 📅', 3, 7);

INSERT INTO questions
VALUES (8, 'Səyahətin bitmə tarixini seç  🏁', 1);
INSERT INTO question_translation
VALUES (22, 'Səyahətin bitmə tarixini seç  🏁', 1, 8);
INSERT INTO question_translation
VALUES (23, 'Choose end date of your journey 🏁', 2, 8);
INSERT INTO question_translation
VALUES (24, 'Выбери дату завершения поездки 🏁', 3, 8);


INSERT INTO questions
VALUES (9,
        'Kim-kim gedəcəksiz? 👨‍👩‍👧‍👦 Uşaqlarla səyahət etdikdə, onların yaşını qeyd etməyi unutma 😇 (məs. "2 böyük, 1 uşaq - 6 yaş") ',
        1);
INSERT INTO question_translation
VALUES (25,
        'Kim-kim gedəcəksiz? 👨‍👩‍👧‍👦 Uşaqlarla səyahət etdikdə, onların yaşını qeyd etməyi unutma 😇 (məs. "2 böyük, 1 uşaq - 6 yaş") ',
        1, 9);
INSERT INTO question_translation
VALUES (26,
        'How many people are going to travel? 👨‍👩‍👧‍👦 When traveling with children, be sure to note their age 😇 (e.g. "2 adults, 1 child - 6 y.o.")',
        2, 9);
INSERT INTO question_translation
VALUES (27,
        'Сколько человек поедет? 👨‍👩‍👧‍👦  Если путешествуешь с детьми, обязательно укажи их возраст 😇 (напр. «2 взрослых, 1 ребенок - 6 лет»)',
        3, 9);

INSERT INTO questions
VALUES (10, 'Səyahət üçün nə qədər büdcə nəzərdə tutmusan 💰? (AZN ilə)', 1);
INSERT INTO question_translation
VALUES (28, 'Səyahət üçün nə qədər büdcə nəzərdə tutmusan 💰? (AZN ilə)', 1, 10);
INSERT INTO question_translation
VALUES (29, 'The budget you plan to spend on this journey? 💰', 2, 10);
INSERT INTO question_translation
VALUES (30, 'Укажи бюджет, который  планируешь потратить на отдых? 💰', 3, 10);


