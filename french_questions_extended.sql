-- Get the quiz_id for "Français Basique"
SET @francais_quiz_id = (SELECT id FROM quizzes WHERE title = 'Français Basique' LIMIT 1);

-- Question 6: Verb conjugation
INSERT INTO question (id, question_text, quiz_id) VALUES (1006, 'Quel est le passé composé du verbe "aller" avec "nous"?', @francais_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (10021, 'Nous allé', 0, 1006);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (10022, 'Nous sommes allés', 1, 1006);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (10023, 'Nous avons allé', 0, 1006);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (10024, 'Nous allons', 0, 1006);

-- Question 7: Article usage
INSERT INTO question (id, question_text, quiz_id) VALUES (1007, 'Quelle phrase utilise correctement l''article partitif?', @francais_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (10025, 'Je mange le pain', 0, 1007);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (10026, 'Je mange des pain', 0, 1007);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (10027, 'Je mange du pain', 1, 1007);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (10028, 'Je mange un pain', 0, 1007);

-- Question 8: Preposition usage
INSERT INTO question (id, question_text, quiz_id) VALUES (1008, 'Quelle préposition complète correctement: "Je vais ___ France"?', @francais_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (10029, 'en', 1, 1008);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (10030, 'à', 0, 1008);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (10031, 'sur', 0, 1008);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (10032, 'dans', 0, 1008);

-- Question 9: Adjective position
INSERT INTO question (id, question_text, quiz_id) VALUES (1009, 'Dans "une belle fleur", l''adjectif "belle" est-il?', @francais_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (10033, 'Épithète', 0, 1009);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (10034, 'Attribut', 0, 1009);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (10035, 'Apposé', 0, 1009);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (10036, 'Épithète', 1, 1009);

-- Question 10: Verb tense
INSERT INTO question (id, question_text, quiz_id) VALUES (1010, 'Quelle forme verbale correspond à l''imparfait de "faire"?', @francais_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (10037, 'Je fais', 0, 1010);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (10038, 'Je faisais', 1, 1010);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (10039, 'Je ferai', 0, 1010);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (10040, 'Je fis', 0, 1010);

-- Question 11: Pronoun usage
INSERT INTO question (id, question_text, quiz_id) VALUES (1011, 'Quel pronom personnel remplace correctement "Paul et Marie"?', @francais_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (10041, 'Ils', 1, 1011);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (10042, 'Elles', 0, 1011);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (10043, 'Eux', 0, 1011);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (10044, 'Leur', 0, 1011);

-- Question 12: Negation
INSERT INTO question (id, question_text, quiz_id) VALUES (1012, 'Comment forme-t-on la négation de "Il mange"?', @francais_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (10045, 'Il mange pas', 0, 1012);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (10046, 'Il ne mange', 0, 1012);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (10047, 'Il ne mange pas', 1, 1012);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (10048, 'Il mange ne pas', 0, 1012);

-- Question 13: Subjunctive mood
INSERT INTO question (id, question_text, quiz_id) VALUES (1013, 'Quelle phrase utilise correctement le subjonctif présent?', @francais_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (10049, 'Je veux que tu viens', 0, 1013);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (10050, 'Je veux que tu viennes', 1, 1013);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (10051, 'Je veux que tu viendra', 0, 1013);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (10052, 'Je veux que tu venais', 0, 1013);

-- Question 14: Comparative
INSERT INTO question (id, question_text, quiz_id) VALUES (1014, 'Quelle est la forme correcte du comparatif pour "grand"?', @francais_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (10053, 'Plus grand que', 0, 1014);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (10054, 'Plus grand comme', 0, 1014);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (10055, 'Plus grand de', 0, 1014);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (10056, 'Plus grand que', 1, 1014);

-- Question 15: Conditional tense
INSERT INTO question (id, question_text, quiz_id) VALUES (1015, 'Quelle est la forme correcte du conditionnel présent pour "avoir"?', @francais_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (10057, 'J''aurais', 1, 1015);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (10058, 'J''aurai', 0, 1015);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (10059, 'J''avais', 0, 1015);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (10060, 'J''aurais eu', 0, 1015);