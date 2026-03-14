-- Complete Extended Questions for All Quizzes
-- This file adds 10 more questions to each quiz (15 total per quiz)
-- Execute this file after your existing questions are in place

-- ========================================
-- FRANÇAIS BASIQUE - 10 Additional Questions
-- ========================================
SET @francais_quiz_id = (SELECT id FROM quiz WHERE title = 'Français Basique' LIMIT 1);

-- Question 6: Verb conjugation (correct answer is 2nd option)
INSERT INTO question (id, question_text, quiz_id) VALUES (6, 'Quel est le passé composé du verbe "aller" avec "nous"?', @francais_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (21, 'Nous allé', 0, 6);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (22, 'Nous sommes allés', 1, 6);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (23, 'Nous avons allé', 0, 6);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (24, 'Nous allons', 0, 6);

-- Question 7: Article usage (correct answer is 3rd option)
INSERT INTO question (id, question_text, quiz_id) VALUES (7, 'Quelle phrase utilise correctement l''article partitif?', @francais_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (25, 'Je mange le pain', 0, 7);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (26, 'Je mange des pain', 0, 7);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (27, 'Je mange du pain', 1, 7);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (28, 'Je mange un pain', 0, 7);

-- Question 8: Preposition usage (correct answer is 1st option)
INSERT INTO question (id, question_text, quiz_id) VALUES (8, 'Quelle préposition complète correctement: "Je vais ___ France"?', @francais_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (29, 'en', 1, 8);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (30, 'à', 0, 8);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (31, 'sur', 0, 8);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (32, 'dans', 0, 8);

-- Question 9: Adjective position (correct answer is 4th option)
INSERT INTO question (id, question_text, quiz_id) VALUES (9, 'Dans "une belle fleur", l''adjectif "belle" est-il?', @francais_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (33, 'Épithète', 0, 9);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (34, 'Attribut', 0, 9);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (35, 'Apposé', 0, 9);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (36, 'Épithète', 1, 9);

-- Question 10: Verb tense (correct answer is 2nd option)
INSERT INTO question (id, question_text, quiz_id) VALUES (10, 'Quelle forme verbale correspond à l''imparfait de "faire"?', @francais_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (37, 'Je fais', 0, 10);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (38, 'Je faisais', 1, 10);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (39, 'Je ferai', 0, 10);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (40, 'Je fis', 0, 10);

-- Question 11: Pronoun usage (correct answer is 1st option)
INSERT INTO question (id, question_text, quiz_id) VALUES (11, 'Quel pronom personnel remplace correctement "Paul et Marie"?', @francais_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (41, 'Ils', 1, 11);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (42, 'Elles', 0, 11);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (43, 'Eux', 0, 11);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (44, 'Leur', 0, 11);

-- Question 12: Negation (correct answer is 3rd option)
INSERT INTO question (id, question_text, quiz_id) VALUES (12, 'Comment forme-t-on la négation de "Il mange"?', @francais_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (45, 'Il mange pas', 0, 12);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (46, 'Il ne mange', 0, 12);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (47, 'Il ne mange pas', 1, 12);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (48, 'Il mange ne pas', 0, 12);

-- Question 13: Subjunctive mood (correct answer is 2nd option)
INSERT INTO question (id, question_text, quiz_id) VALUES (13, 'Quelle phrase utilise correctement le subjonctif présent?', @francais_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (49, 'Je veux que tu viens', 0, 13);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (50, 'Je veux que tu viennes', 1, 13);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (51, 'Je veux que tu viendra', 0, 13);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (52, 'Je veux que tu venais', 0, 13);

-- Question 14: Comparative (correct answer is 4th option)
INSERT INTO question (id, question_text, quiz_id) VALUES (14, 'Quelle est la forme correcte du comparatif pour "grand"?', @francais_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (53, 'Plus grand que', 0, 14);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (54, 'Plus grand comme', 0, 14);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (55, 'Plus grand de', 0, 14);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (56, 'Plus grand que', 1, 14);

-- Question 15: Conditional tense (correct answer is 1st option)
INSERT INTO question (id, question_text, quiz_id) VALUES (15, 'Quelle est la forme correcte du conditionnel présent pour "avoir"?', @francais_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (57, 'J''aurais', 1, 15);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (58, 'J''aurai', 0, 15);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (59, 'J''avais', 0, 15);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (60, 'J''aurais eu', 0, 15);

-- ========================================
-- CHIMIE - 10 Additional Questions
-- ========================================
SET @chimie_quiz_id = (SELECT id FROM quiz WHERE title = 'Chimie' LIMIT 1);

-- Question 6: Chemical equations (correct answer is 3rd option)
INSERT INTO question (id, question_text, quiz_id) VALUES (26, 'Quelle est l''équation chimique équilibrée pour la combustion du méthane?', @chimie_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (61, 'CH4 + O2 → CO2 + H2O', 0, 26);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (62, 'CH4 + O → CO2 + H2', 0, 26);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (63, 'CH4 + 2O2 → CO2 + 2H2O', 1, 26);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (64, 'CH4 + O2 → CO + H2O', 0, 26);

-- Question 7: Molar mass (correct answer is 2nd option)
INSERT INTO question (id, question_text, quiz_id) VALUES (27, 'Quelle est la masse molaire approximative de l''eau (H2O)?', @chimie_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (65, '10 g/mol', 0, 27);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (66, '18 g/mol', 1, 27);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (67, '20 g/mol', 0, 27);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (68, '16 g/mol', 0, 27);

-- Question 8: Oxidation states (correct answer is 4th option)
INSERT INTO question (id, question_text, quiz_id) VALUES (28, 'Quel est l''état d''oxydation de l''oxygène dans H2O2?', @chimie_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (69, '-2', 0, 28);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (70, '-1', 0, 28);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (71, '0', 0, 28);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (72, '-1', 1, 28);

-- Question 9: Chemical families (correct answer is 1st option)
INSERT INTO question (id, question_text, quiz_id) VALUES (29, 'À quelle famille chimique appartient le sodium (Na)?', @chimie_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (73, 'Alcalins', 1, 29);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (74, 'Alcalino-terreux', 0, 29);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (75, 'Halogènes', 0, 29);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (76, 'Gaz nobles', 0, 29);

-- Question 10: Solutions (correct answer is 2nd option)
INSERT INTO question (id, question_text, quiz_id) VALUES (30, 'Qu''est-ce qu''un solvant polaire?', @chimie_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (77, 'Un solvant qui ne dissout rien', 0, 30);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (78, 'Un solvant avec des pôles positifs et négatifs', 1, 30);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (79, 'Un solvant uniquement pour les gaz', 0, 30);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (80, 'Un solvant qui ne contient que de l''eau', 0, 30);

-- Question 11: Gas laws (correct answer is 3rd option)
INSERT INTO question (id, question_text, quiz_id) VALUES (31, 'Quelle loi décrit la relation entre pression et volume d''un gaz?', @chimie_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (81, 'Loi de Gay-Lussac', 0, 31);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (82, 'Loi de Charles', 0, 31);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (83, 'Loi de Boyle-Mariotte', 1, 31);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (84, 'Loi d''Avogadro', 0, 31);

-- Question 12: Organic chemistry (correct answer is 1st option)
INSERT INTO question (id, question_text, quiz_id) VALUES (32, 'Quelle est la formule générale des alcanes?', @chimie_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (85, 'CnH2n+2', 1, 32);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (86, 'CnH2n', 0, 32);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (87, 'CnH2n-2', 0, 32);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (88, 'CnH2n+1', 0, 32);

-- Question 13: Acids and bases (correct answer is 4th option)
INSERT INTO question (id, question_text, quiz_id) VALUES (33, 'Quel est l''acide le plus fort parmi ces options?', @chimie_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (89, 'Acide acétique', 0, 33);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (90, 'Acide citrique', 0, 33);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (91, 'Acide carbonique', 0, 33);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (92, 'Acide chlorhydrique', 1, 33);

-- Question 14: Redox reactions (correct answer is 2nd option)
INSERT INTO question (id, question_text, quiz_id) VALUES (34, 'Que signifie "rédox" en chimie?', @chimie_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (93, 'Réduction uniquement', 0, 34);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (94, 'Réduction et oxydation simultanées', 1, 34);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (95, 'Oxydation uniquement', 0, 34);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (96, 'Réaction acide-base', 0, 34);

-- Question 15: Concentration (correct answer is 1st option)
INSERT INTO question (id, question_text, quiz_id) VALUES (35, 'Comment calcule-t-on la molarité d''une solution?', @chimie_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (97, 'Moles de soluté / Volume de solution (L)', 1, 35);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (98, 'Masse de soluté / Volume de solution (L)', 0, 35);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (99, 'Moles de soluté / Masse de solvant (kg)', 0, 35);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (100, 'Volume de soluté / Volume de solution (L)', 0, 35);

-- ========================================
-- MATHÉMATIQUES - 10 Additional Questions
-- ========================================
SET @math_quiz_id = (SELECT id FROM quiz WHERE title = 'Mathématiques' LIMIT 1);

-- Question 6: Fractions (correct answer is 3rd option)
INSERT INTO question (id, question_text, quiz_id) VALUES (6, 'Quelle est la forme simplifiée de 12/18?', @math_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (21, '4/6', 0, 6);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (22, '6/9', 0, 6);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (23, '2/3', 1, 6);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (24, '3/4', 0, 6);

-- Question 7: Percentages (correct answer is 1st option)
INSERT INTO question (id, question_text, quiz_id) VALUES (7, 'Quel est 25% de 80?', @math_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (25, '20', 1, 7);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (26, '25', 0, 7);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (27, '30', 0, 7);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (28, '15', 0, 7);

-- Question 8: Algebra (correct answer is 2nd option)
INSERT INTO question (id, question_text, quiz_id) VALUES (8, 'Quelle est la valeur de x dans l''équation 2x + 5 = 13?', @math_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (29, 'x = 3', 0, 8);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (30, 'x = 4', 1, 8);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (31, 'x = 5', 0, 8);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (32, 'x = 6', 0, 8);

-- Question 9: Geometry (correct answer is 4th option)
INSERT INTO question (id, question_text, quiz_id) VALUES (9, 'Quelle est l''aire d''un carré de côté 5 cm?', @math_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (33, '10 cm²', 0, 9);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (34, '15 cm²', 0, 9);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (35, '20 cm²', 0, 9);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (36, '25 cm²', 1, 9);

-- Question 10: Exponents (correct answer is 2nd option)
INSERT INTO question (id, question_text, quiz_id) VALUES (10, 'Quelle est la valeur de 2³?', @math_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (37, '4', 0, 10);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (38, '8', 1, 10);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (39, '6', 0, 10);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (40, '9', 0, 10);

-- Question 11: Square roots (correct answer is 3rd option)
INSERT INTO question (id, question_text, quiz_id) VALUES (11, 'Quelle est la racine carrée de 144?', @math_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (41, '10', 0, 11);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (42, '11', 0, 11);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (43, '12', 1, 11);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (44, '13', 0, 11);

-- Question 12: Proportions (correct answer is 1st option)
INSERT INTO question (id, question_text, quiz_id) VALUES (12, 'Si 3 pommes coûtent 6€, combien coûtent 5 pommes?', @math_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (45, '10€', 1, 12);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (46, '8€', 0, 12);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (47, '12€', 0, 12);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (48, '9€', 0, 12);

-- Question 13: Angles (correct answer is 4th option)
INSERT INTO question (id, question_text, quiz_id) VALUES (13, 'Quelle est la somme des angles d''un triangle?', @math_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (49, '90°', 0, 13);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (50, '120°', 0, 13);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (51, '150°', 0, 13);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (52, '180°', 1, 13);

-- Question 14: Decimals (correct answer is 2nd option)
INSERT INTO question (id, question_text, quiz_id) VALUES (14, 'Quelle est la forme décimale de 3/4?', @math_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (53, '0.5', 0, 14);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (54, '0.75', 1, 14);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (55, '0.25', 0, 14);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (56, '0.8', 0, 14);

-- Question 15: Statistics (correct answer is 1st option)
INSERT INTO question (id, question_text, quiz_id) VALUES (15, 'Quelle est la moyenne de 4, 8, et 12?', @math_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (57, '8', 1, 15);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (58, '10', 0, 15);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (59, '12', 0, 15);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (60, '6', 0, 15);

-- ========================================
-- SUMMARY
-- ========================================
-- Français Basique: 15 questions (IDs 1-15, Answers 1-60)
-- Chimie: 15 questions (IDs 21-35, Answers 41-100) 
-- Mathématiques: 15 questions (IDs 6-15, Answers 21-60)
-- 
-- Each quiz now has 15 questions, but only 5 will be randomly selected
-- when users start a quiz, ensuring variety and replayability!
