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