--   Sullar  queries --
--  sual 1 --
INSERT INTO questions
(id, text, question_type)
VALUES (1, 'Könlündən necə bir səyahət keçir? 🤔', 'OPTION');

INSERT INTO question_translation
(id, text, language_code, question_id)
VALUES (1, 'Könlündən necə bir səyahət keçir? 🤔', 'AZ', 1);
INSERT INTO question_translation
(id, text, language_code, question_id)
VALUES (2, 'Choose the type of tour you prefer 🤔', 'EN', 1);
INSERT INTO question_translation
(id, text, language_code, question_id)
VALUES (3, 'Выбери вид отдыха: 🤔', 'RU', 1);


INSERT INTO options
(id, option_text, question_id)
VALUES (1, 'İstirahət-gəzinti', 1);
INSERT INTO options
(id, option_text, question_id)
VALUES (2, 'Aktiv istirahət', 1);
INSERT INTO options
(id, option_text, question_id)
VALUES (3, 'Ekskursiya', 1);
INSERT INTO options
(id, option_text, question_id)
VALUES (4, 'Fərq etməz', 1);

INSERT INTO option_translations (text, language_code, option_id)
VALUES ('İstirahət-gəzinti', 'AZ', 1);
INSERT INTO option_translations (text, language_code, option_id)
VALUES ('Relax and walking', 'EN', 1);
INSERT INTO option_translations (text, language_code, option_id)
VALUES ('Отдых и прогулки', 'RU', 1);


INSERT INTO option_translations (text, language_code, option_id)
VALUES ('Aktiv istirahət', 'AZ', 2);
INSERT INTO option_translations (text, language_code, option_id)
VALUES ('Active tourism', 'EN', 2);
INSERT INTO option_translations (text, language_code, option_id)
VALUES ('Активный туризм', 'RU', 2);

INSERT INTO option_translations (text, language_code, option_id)
VALUES ('Ekskursiya', 'AZ', 3);
INSERT INTO option_translations (text, language_code, option_id)
VALUES ('Excursion', 'EN', 3);
INSERT INTO option_translations (text, language_code, option_id)
VALUES ('Экскурсия', 'RU', 3);

INSERT INTO option_translations (text, language_code, option_id)
VALUES ('Fərq etməz', 'AZ', 4);
INSERT INTO option_translations (text, language_code, option_id)
VALUES ('Any type', 'EN', 4);
INSERT INTO option_translations (text, language_code, option_id)
VALUES ('Любой тип', 'RU', 4);


--  sual 2 --

INSERT INTO questions
(id, text, question_type)
VALUES (2, 'Necə bir təklif səni maraqlandırır?💭', 'OPTION');

INSERT INTO question_translation
(id, text, language_code, question_id)
VALUES (4, 'Necə bir təklif səni maraqlandırır?💭', 'AZ', 2);
INSERT INTO question_translation
(id, text, language_code, question_id)
VALUES (5, 'What kind of offer do you like to receive?💭', 'EN', 2);
INSERT INTO question_translation
(id, text, language_code, question_id)
VALUES (6, 'Какое предложение вас интересует? 💭', 'RU', 2);


INSERT INTO options
(id, option_text, question_id)
VALUES (5, 'Yalnız bilet', 2);
INSERT INTO options
(id, option_text, question_id)
VALUES (6, 'Yalnız otel', 2);
INSERT INTO options
(id, option_text, question_id)
VALUES (7, 'Hər şey daxil', 2);


INSERT INTO option_translations (text, language_code, option_id)
VALUES ('Yalnız bilet', 'AZ', 5);
INSERT INTO option_translations (text, language_code, option_id)
VALUES ('Ticket only', 'EN', 5);
INSERT INTO option_translations (text, language_code, option_id)
VALUES ('Только билет', 'RU', 5);


INSERT INTO option_translations (text, language_code, option_id)
VALUES ('Yalnız otel', 'AZ', 6);
INSERT INTO option_translations (text, language_code, option_id)
VALUES ('Hotel only', 'EN', 6);
INSERT INTO option_translations (text, language_code, option_id)
VALUES ('Только отель', 'RU', 6);

INSERT INTO option_translations (text, language_code, option_id)
VALUES ('Hər şey daxil', 'AZ', 7);
INSERT INTO option_translations (text, language_code, option_id)
VALUES ('All inclusive', 'EN', 7);
INSERT INTO option_translations (text, language_code, option_id)
VALUES ('Все включено', 'RU', 7);

-- sual 3 --

INSERT INTO questions
(id, text, question_type)
VALUES (3, 'Ölkədaxili yoxsa Ölkəxarici?', 'OPTION');

INSERT INTO question_translation
(id, text, language_code, question_id)
VALUES (7, 'Ölkədaxili yoxsa Ölkəxarici?', 'AZ', 3);
INSERT INTO question_translation
(id, text, language_code, question_id)
VALUES (8, 'Domestic or Abroad?', 'EN', 3);
INSERT INTO question_translation
(id, text, language_code, question_id)
VALUES (9, 'Внутри страны или за границей?', 'RU', 3);


INSERT INTO options
(id, option_text, question_id)
VALUES (8, 'Ölkədaxili', 3);
INSERT INTO options
(id, option_text, question_id)
VALUES (9, 'Ölkəxarici', 3);


INSERT INTO option_translations (text, language_code, option_id)
VALUES ('Ölkədaxili', 'AZ', 8);
INSERT INTO option_translations (text, language_code, option_id)
VALUES ('Domestic', 'EN', 8);
INSERT INTO option_translations (text, language_code, option_id)
VALUES ('Bнутри страны', 'RU', 8);


INSERT INTO option_translations (text, language_code, option_id)
VALUES ('Ölkəxarici', 'AZ', 9);
INSERT INTO option_translations (text, language_code, option_id)
VALUES ('Abroad', 'EN', 9);
INSERT INTO option_translations (text, language_code, option_id)
VALUES ('За границей', 'RU', 9);

-- sual 4 --

INSERT INTO questions
(id, text, question_type)
VALUES (4, 'Səyahət tipi?', 'OPTION');

INSERT INTO question_translation
(id, text, language_code, question_id)
VALUES (10, 'Səyahət tipi?', 'AZ', 4);
INSERT INTO question_translation
(id, text, language_code, question_id)
VALUES (11, 'Type of travel?', 'EN', 4);
INSERT INTO question_translation
(id, text, language_code, question_id)
VALUES (12, 'Тип путешествия?', 'RU', 4);


INSERT INTO options
(id, option_text, question_id)
VALUES (10, 'Qrup', 4);
INSERT INTO options
(id, option_text, question_id)
VALUES (11, 'Fərdi', 4);


INSERT INTO option_translations (text, language_code, option_id)
VALUES ('Qrup', 'AZ', 10);
INSERT INTO option_translations (text, language_code, option_id)
VALUES ('Group', 'EN', 10);
INSERT INTO option_translations (text, language_code, option_id)
VALUES ('Группа', 'RU', 10);


INSERT INTO option_translations (text, language_code, option_id)
VALUES ('Fərdi', 'AZ', 11);
INSERT INTO option_translations (text, language_code, option_id)
VALUES ('Individual', 'EN', 11);
INSERT INTO option_translations (text, language_code, option_id)
VALUES ('Индивидуальный', 'RU', 11);


-- sual 5 --

INSERT INTO questions
(id, text, question_type)
VALUES (5, 'Hara getmək istəyirsən? 🏞?', 'OPTION');

INSERT INTO question_translation
(id, text, language_code, question_id)
VALUES (13, 'Hara getmək istəyirsən? 🏞?', 'AZ', 5);
INSERT INTO question_translation
(id, text, language_code, question_id)
VALUES (14, 'Do you know exact destination? 🏞', 'EN', 5);
INSERT INTO question_translation
(id, text, language_code, question_id)
VALUES (15, 'Знаешь куда хочешь поехать? 🏞', 'RU', 5);


INSERT INTO options
(id, option_text, question_id)
VALUES (12, 'Bot təklif etsin', 5);
INSERT INTO options
(id, option_text, question_id)
VALUES (13, 'Öz istədiyim yerə', 5);


INSERT INTO option_translations (text, language_code, option_id)
VALUES ('Bot təklif etsin', 'AZ', 12);
INSERT INTO option_translations (text, language_code, option_id)
VALUES ('Bot can offer', 'EN', 12);
INSERT INTO option_translations (text, language_code, option_id)
VALUES ('Пусть бот подскажет', 'RU', 12);


INSERT INTO option_translations (text, language_code, option_id)
VALUES ('Öz istədiyim yerə', 'AZ', 13);
INSERT INTO option_translations (text, language_code, option_id)
VALUES ('Yes I know the destination', 'EN', 13);
INSERT INTO option_translations (text, language_code, option_id)
VALUES ('Да, я знаю пункт назначения', 'RU', 13);

-- sual 6 --

INSERT INTO questions
(id, text, question_type)
VALUES (6, 'Hansı şəhərdən yola düşəcəksən?📍', 'TEXT');

INSERT INTO question_translation
(id, text, language_code, question_id)
VALUES (16, 'Hansı şəhərdən yola düşəcəksən?📍', 'AZ', 6);
INSERT INTO question_translation
(id, text, language_code, question_id)
VALUES (17, 'Which city you are traveling from?📍', 'EN', 6);
INSERT INTO question_translation
(id, text, language_code, question_id)
VALUES (18, 'Из какого города выезжаешь?📍', 'RU', 6);

-- sual 7 --

INSERT INTO questions
(id, text, question_type)
VALUES (7, 'Səyahətin başlanma tarixini seç: nümunə(xx/xx/xxxx) 📅', 'TEXT');

INSERT INTO question_translation
(id, text, language_code, question_id)
VALUES (19, 'Səyahətin başlanma tarixini seç: 📅', 'AZ', 7);
INSERT INTO question_translation
(id, text, language_code, question_id)
VALUES (20, 'Choose start date of your journey: 📅', 'EN', 7);
INSERT INTO question_translation
(id, text, language_code, question_id)
VALUES (21, 'Выбери дату начала поездки: 📅', 'RU', 7);

-- sual 8 --

INSERT INTO questions
(id, text, question_type)
VALUES (8, 'Səyahətin bitmə tarixini seç: nümunə(xx/xx/xxxx) 🏁', 'TEXT');

INSERT INTO question_translation
(id, text, language_code, question_id)
VALUES (22, 'Səyahətin bitmə tarixini seç 🏁', 'AZ', 8);
INSERT INTO question_translation
(id, text, language_code, question_id)
VALUES (23, 'Choose end date of your journey 🏁', 'EN', 8);
INSERT INTO question_translation
(id, text, language_code, question_id)
VALUES (24, 'Выбери дату завершения поездки 🏁', 'RU', 8);

-- sual 9 --

INSERT INTO questions
(id, text, question_type)
VALUES (9, 'Kim-kim gedəcəksiz? 👨‍👩‍👧‍👦 Uşaqlarla səyahət etdikdə, onların yaşını qeyd etməyi unutma 😇 (məs. "2 böyük, 1 uşaq - 6 yaş")', 'TEXT');

INSERT INTO question_translation
(id, text, language_code, question_id)
VALUES (25, 'Kim-kim gedəcəksiz? 👨‍👩‍👧‍👦 Uşaqlarla səyahət etdikdə, onların yaşını qeyd etməyi unutma 😇 (məs. "2 böyük, 1 uşaq - 6 yaş")', 'AZ', 9);
INSERT INTO question_translation
(id, text, language_code, question_id)
VALUES (26, 'How many people are going to travel? 👨‍👩‍👧‍👦 When traveling with children, be sure to note their age 😇 (e.g. "2 adults, 1 child - 6 y.o.")', 'EN', 9);
INSERT INTO question_translation
(id, text, language_code, question_id)
VALUES (29, 'Сколько человек поедет? 👨‍👩‍👧‍👦 Если путешествуешь с детьми, обязательно укажи их возраст 😇 (напр. «2 взрослых, 1 ребенок - 6 лет»)', 'RU', 9);

-- sual 10 --

INSERT INTO questions
(id, text, question_type)
VALUES (10, 'Səyahət üçün nə qədər büdcə nəzərdə tutmusan 💰? (AZN ilə)', 'TEXT');

INSERT INTO question_translation
(id, text, language_code, question_id)
VALUES (30, 'Səyahət üçün nə qədər büdcə nəzərdə tutmusan 💰? (AZN ilə)', 'AZ', 10);
INSERT INTO question_translation
(id, text, language_code, question_id)
VALUES (31, 'The budget you plan to spend on this journey? 💰', 'EN', 10);
INSERT INTO question_translation
(id, text, language_code, question_id)
VALUES (32, 'Укажи бюджет, который планируешь потратить на отдых? 💰', 'RU', 10);


