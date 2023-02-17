-- 1 - en
-- 2 - az
-- 3 - ru

INSERT INTO languages VALUES (1, 'En');
INSERT INTO languages VALUES (2, 'Az');
INSERT INTO languages VALUES (3, 'Ru');

INSERT INTO question_type VALUES (1, 'Text');
INSERT INTO question_type VALUES (2, 'Option');

INSERT INTO questions VALUES (1, 'Könlündən necə bir səyahət keçir? 🤔', 2);
INSERT INTO question_translation VALUES (1, 'Könlündən necə bir səyahət keçir? 🤔', 2, 1);
INSERT INTO question_translation VALUES (2, 'Choose the type of tour you prefer 🤔', 1, 1);
INSERT INTO question_translation VALUES (3, 'Выбери вид отдыха: 🤔', 3, 1);

INSERT INTO options VALUES (1, 'İstirahət-gəzinti', 1);
INSERT INTO options VALUES (2, 'Aktiv istirahət', 1);
INSERT INTO options VALUES (3, 'Ekskursiya', 1);
INSERT INTO options VALUES (4, 'Fərq etməz', 1);

INSERT INTO option_translations (text, language_id, option_id) VALUES ('İstirahət-gəzinti', 2, 1);
INSERT INTO option_translations (text, language_id, option_id) VALUES ('Relax and walking', 1, 1);
INSERT INTO option_translations (text, language_id, option_id) VALUES ('Отдых и прогулки', 3, 1);

INSERT INTO option_translations (text, language_id, option_id) VALUES ('Aktiv istirahət', 2, 2);
INSERT INTO option_translations (text, language_id, option_id) VALUES ('Active tourism', 1, 2);
INSERT INTO option_translations (text, language_id, option_id) VALUES ('Активный туризм', 3, 2);

INSERT INTO option_translations (text, language_id, option_id) VALUES ('Ekskursiya', 2, 3);
INSERT INTO option_translations (text, language_id, option_id) VALUES ('Excursion', 1, 3);
INSERT INTO option_translations (text, language_id, option_id) VALUES ('Экскурсия', 3, 3);

INSERT INTO option_translations (text, language_id, option_id) VALUES ('Fərq etməz', 2, 4);
INSERT INTO option_translations (text, language_id, option_id) VALUES ('Any type', 1, 4);
INSERT INTO option_translations (text, language_id, option_id) VALUES ('Любой тип', 3, 4);


INSERT INTO questions
VALUES (2, 'Necə bir təklif səni maraqlandırır?💭', 2);
INSERT INTO question_translation
VALUES (4, 'Necə bir təklif səni maraqlandırır?💭', 2, 2);
INSERT INTO question_translation
VALUES (5, 'What kind of offer do you like to receive?💭', 1, 2);
INSERT INTO question_translation
VALUES (6, 'Какое предложение вас интересует? 💭', 3, 2);

INSERT INTO questions
VALUES (3, 'Ölkədaxili yoxsa Ölkəxarici?', 2);
INSERT INTO question_translation
VALUES (7, 'Ölkədaxili yoxsa Ölkəxarici?', 2, 3);
INSERT INTO question_translation
VALUES (8, 'Domestic or Abroad?', 1, 3);
INSERT INTO question_translation
VALUES (9, 'Внутри страны или за границей?', 3, 3);

INSERT INTO questions
VALUES (4, 'Səyahət tipi?', 2);
INSERT INTO question_translation
VALUES (10, 'Səyahət tipi?', 2, 4);
INSERT INTO question_translation
VALUES (11, 'Type of travel?', 1, 4);
INSERT INTO question_translation
VALUES (12, 'Тип путешествия?', 3, 4);

INSERT INTO questions
VALUES (5, 'Hara getmək istəyirsən? 🏞?', 2);
INSERT INTO question_translation
VALUES (13, 'Hara getmək istəyirsən? 🏞?', 2, 5);
INSERT INTO question_translation
VALUES (14, 'Do you know exact destination? 🏞', 1, 5);
INSERT INTO question_translation
VALUES (15, 'Знаешь куда хочешь поехать? 🏞', 3, 5);

INSERT INTO questions
VALUES (6, 'Hansı şəhərdən yola düşəcəksən?📍', 1);
INSERT INTO question_translation
VALUES (16, 'Hansı şəhərdən yola düşəcəksən?📍', 2, 6);
INSERT INTO question_translation
VALUES (17, 'Which city you are traveling from?📍', 1, 6);
INSERT INTO question_translation
VALUES (18, 'Из какого города выезжаешь?📍', 3, 6);

INSERT INTO questions
VALUES (7, 'Səyahətin başlanma tarixini seç: 📅', 1);
INSERT INTO question_translation
VALUES (19, 'Səyahətin başlanma tarixini seç: 📅', 2, 7);
INSERT INTO question_translation
VALUES (20, 'Choose start date of your journey: 📅', 1, 7);
INSERT INTO question_translation
VALUES (21, 'Выбери дату начала поездки: 📅', 3, 7);

INSERT INTO questions
VALUES (8, 'Səyahətin bitmə tarixini seç  🏁', 1);
INSERT INTO question_translation
VALUES (22, 'Səyahətin bitmə tarixini seç  🏁', 2, 8);
INSERT INTO question_translation
VALUES (23, 'Choose end date of your journey 🏁', 1, 8);
INSERT INTO question_translation
VALUES (24, 'Выбери дату завершения поездки 🏁', 3, 8);


INSERT INTO questions
VALUES (9,
        'Kim-kim gedəcəksiz? 👨‍👩‍👧‍👦 Uşaqlarla səyahət etdikdə, onların yaşını qeyd etməyi unutma 😇 (məs. "2 böyük, 1 uşaq - 6 yaş") ',
        1);
INSERT INTO question_translation
VALUES (25,
        'Kim-kim gedəcəksiz? 👨‍👩‍👧‍👦 Uşaqlarla səyahət etdikdə, onların yaşını qeyd etməyi unutma 😇 (məs. "2 böyük, 1 uşaq - 6 yaş") ',
        2, 9);
INSERT INTO question_translation
VALUES (26,
        'How many people are going to travel? 👨‍👩‍👧‍👦 When traveling with children, be sure to note their age 😇 (e.g. "2 adults, 1 child - 6 y.o.")',
        1, 9);
INSERT INTO question_translation
VALUES (27,
        'Сколько человек поедет? 👨‍👩‍👧‍👦  Если путешествуешь с детьми, обязательно укажи их возраст 😇 (напр. «2 взрослых, 1 ребенок - 6 лет»)',
        3, 9);

INSERT INTO questions
VALUES (10, 'Səyahət üçün nə qədər büdcə nəzərdə tutmusan 💰? (AZN ilə)', 1);
INSERT INTO question_translation
VALUES (28, 'Səyahət üçün nə qədər büdcə nəzərdə tutmusan 💰? (AZN ilə)', 2, 10);
INSERT INTO question_translation
VALUES (29, 'The budget you plan to spend on this journey? 💰', 1, 10);
INSERT INTO question_translation
VALUES (30, 'Укажи бюджет, который  планируешь потратить на отдых? 💰', 3, 10);