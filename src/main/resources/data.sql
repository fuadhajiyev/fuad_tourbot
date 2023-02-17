


INSERT INTO questions VALUES (2,'Necə bir təklif səni maraqlandırır?💭',2);
INSERT INTO question_translation VALUES (4,'Necə bir təklif səni maraqlandırır?💭',2,2);
INSERT INTO question_translation VALUES (5,'What kind of offer do you like to receive?💭',2,1);
INSERT INTO question_translation VALUES (6,'Какое предложение вас интересует? 💭',2,3);

INSERT INTO questions VALUES (3,'Ölkədaxili yoxsa Ölkəxarici?',2);
INSERT INTO question_translation VALUES (7,'Azərbaycan','Ölkədaxili yoxsa Ölkəxarici?',3,2);
INSERT INTO question_translation VALUES (8,'country','English','Domestic or Abroad?',3,1);
INSERT INTO question_translation VALUES (9,'country','Русский','Внутри страны или за границей?',3,3);

INSERT INTO questions VALUES (4,'Səyahət tipi?',2);
INSERT INTO question_translation VALUES (10,'Səyahət tipi?',4,2);
INSERT INTO question_translation VALUES (11,'Səyahət tipi?',4,1);
INSERT INTO question_translation VALUES (12,'Səyahət tipi?',4,3);

INSERT INTO questions VALUES (5,'Hara getmək istəyirsən? 🏞?',2);
INSERT INTO question_translation VALUES (13,'Hara getmək istəyirsən? 🏞?',5,2);
INSERT INTO question_translation VALUES (14,'Do you know exact destination? 🏞',5,1);
INSERT INTO question_translation VALUES (15,'Русский','Знаешь куда хочешь поехать? 🏞',5,3);

INSERT INTO questions VALUES (6,'Hansı şəhərdən yola düşəcəksən?📍',1);
INSERT INTO question_translation VALUES (16,'Hansı şəhərdən yola düşəcəksən?📍',6,2);
INSERT INTO question_translation VALUES (17,'Which city you are traveling from?📍',6,1);
INSERT INTO question_translation VALUES (18,'Русский','Из какого города выезжаешь?📍',6,3);

INSERT INTO questions VALUES (7,'Səyahətin başlanma tarixini seç: 📅',1);
INSERT INTO question_translation VALUES (19,'Səyahətin başlanma tarixini seç: 📅',7,2);
INSERT INTO question_translation VALUES (20,'Choose start date of your journey: 📅',7,1);
INSERT INTO question_translation VALUES (21,'Выбери дату начала поездки: 📅',7,3);

INSERT INTO questions VALUES (8,'Səyahətin bitmə tarixini seç  🏁',1);
INSERT INTO question_translation VALUES (22,'Səyahətin bitmə tarixini seç  🏁',8,2);
INSERT INTO question_translation VALUES (23,'Choose end date of your journey 🏁',8,1);
INSERT INTO question_translation VALUES (24,'Выбери дату завершения поездки 🏁',8,3);


INSERT INTO questions VALUES (9,'Kim-kim gedəcəksiz? 👨‍👩‍👧‍👦 Uşaqlarla səyahət etdikdə, onların yaşını qeyd etməyi unutma 😇 (məs. "2 böyük, 1 uşaq - 6 yaş") ',1);
INSERT INTO question_translation VALUES (25,'Kim-kim gedəcəksiz? 👨‍👩‍👧‍👦 Uşaqlarla səyahət etdikdə, onların yaşını qeyd etməyi unutma 😇 (məs. "2 böyük, 1 uşaq - 6 yaş") ',9,2);
INSERT INTO question_translation VALUES (26,'How many people are going to travel? 👨‍👩‍👧‍👦 When traveling with children, be sure to note their age 😇 (e.g. "2 adults, 1 child - 6 y.o.")',9,1);
INSERT INTO question_translation VALUES (27,'Русский','Сколько человек поедет? 👨‍👩‍👧‍👦  Если путешествуешь с детьми, обязательно укажи их возраст 😇 (напр. «2 взрослых, 1 ребенок - 6 лет»)',9,3);

INSERT INTO questions VALUES (10,'Səyahət üçün nə qədər büdcə nəzərdə tutmusan 💰? (AZN ilə)',1);
INSERT INTO question_translation VALUES (28,'Səyahət üçün nə qədər büdcə nəzərdə tutmusan 💰? (AZN ilə)',10,2);
INSERT INTO question_translation VALUES (29,'The budget you plan to spend on this journey? 💰',10,1 );
INSERT INTO question_translation VALUES (30,'Укажи бюджет, который  планируешь потратить на отдых? 💰',10,3);

INSERT INTO questions VALUES (11,'Sorğunu aldım🥳.Ən qısa zamanda istəyinə uyğun təkliflər hazırlayıb göndərəcəm .😊');
INSERT INTO question_translation VALUES (31,'Sorğunu aldım🥳.Ən qısa zamanda istəyinə uyğun təkliflər hazırlayıb göndərəcəm .😊');
INSERT INTO question_translation VALUES (32,'I received your request🥳. My assistants are currently unavailable. I will prepare and send you offers as soon as possible.😊');
INSERT INTO question_translation VALUES (33,'Я принял твой запрос🥳. В данный момент мои помощники недоступны. В кратчайшее время я обязательно подготовлю и отправлю тебе предложения 😊');

/*
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


 */