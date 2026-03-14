-- Extended Questions for All Quizzes - Safe Mode Version
-- Run this with safe mode disabled: mysql -u root -p --safe-updates=0 quizapp < extended_questions_safe.sql

-- Disable safe mode
SET SQL_SAFE_UPDATES = 0;

-- ========================================
-- FRANÇAIS BASIQUE - 10 Additional Questions
-- ========================================
SET @francais_quiz_id = (SELECT id FROM quizzes WHERE title = 'Français Basique' LIMIT 1);

-- Question 6: Verb conjugation (correct answer is 2nd option)
INSERT INTO question (id, question_text, quiz_id) VALUES (16, 'Quel est le passé composé du verbe "aller" avec "nous"?', @francais_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (21, 'Nous allé', 0, 16);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (22, 'Nous sommes allés', 1, 16);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (23, 'Nous avons allé', 0, 16);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (24, 'Nous allons', 0, 16);

-- Question 7: Article usage (correct answer is 3rd option)
INSERT INTO question (id, question_text, quiz_id) VALUES (17, 'Quelle phrase utilise correctement l''article partitif?', @francais_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (25, 'Je mange le pain', 0, 17);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (26, 'Je mange des pain', 0, 17);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (27, 'Je mange du pain', 1, 17);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (28, 'Je mange un pain', 0, 17);

-- Question 8: Preposition usage (correct answer is 1st option)
INSERT INTO question (id, question_text, quiz_id) VALUES (18, 'Quelle préposition complète correctement: "Je vais ___ France"?', @francais_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (29, 'en', 1, 18);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (30, 'à', 0, 18);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (31, 'sur', 0, 18);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (32, 'dans', 0, 18);

-- Question 9: Adjective position (correct answer is 4th option)
INSERT INTO question (id, question_text, quiz_id) VALUES (19, 'Dans "une belle fleur", l''adjectif "belle" est-il?', @francais_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (33, 'Épithète', 0, 19);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (34, 'Attribut', 0, 19);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (35, 'Apposé', 0, 19);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (36, 'Épithète', 1, 19);

-- Question 10: Verb tense (correct answer is 2nd option)
INSERT INTO question (id, question_text, quiz_id) VALUES (20, 'Quelle forme verbale correspond à l''imparfait de "faire"?', @francais_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (37, 'Je fais', 0, 20);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (38, 'Je faisais', 1, 20);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (39, 'Je ferai', 0, 20);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (40, 'Je fis', 0, 20);

-- Question 11: Pronoun usage (correct answer is 1st option)
INSERT INTO question (id, question_text, quiz_id) VALUES (21, 'Quel pronom personnel remplace correctement "Paul et Marie"?', @francais_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (41, 'Ils', 1, 21);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (42, 'Elles', 0, 21);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (43, 'Eux', 0, 21);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (44, 'Leur', 0, 21);

-- Question 12: Negation (correct answer is 3rd option)
INSERT INTO question (id, question_text, quiz_id) VALUES (22, 'Comment forme-t-on la négation de "Il mange"?', @francais_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (45, 'Il mange pas', 0, 22);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (46, 'Il ne mange', 0, 22);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (47, 'Il ne mange pas', 1, 22);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (48, 'Il mange ne pas', 0, 22);

-- Question 13: Subjunctive mood (correct answer is 2nd option)
INSERT INTO question (id, question_text, quiz_id) VALUES (23, 'Quelle phrase utilise correctement le subjonctif présent?', @francais_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (49, 'Je veux que tu viens', 0, 23);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (50, 'Je veux que tu viennes', 1, 23);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (51, 'Je veux que tu viendra', 0, 23);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (52, 'Je veux que tu venais', 0, 23);

-- Question 14: Comparative (correct answer is 4th option)
INSERT INTO question (id, question_text, quiz_id) VALUES (24, 'Quelle est la forme correcte du comparatif pour "grand"?', @francais_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (53, 'Plus grand que', 0, 24);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (54, 'Plus grand comme', 0, 24);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (55, 'Plus grand de', 0, 24);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (56, 'Plus grand que', 1, 24);

-- Question 15: Conditional tense (correct answer is 1st option)
INSERT INTO question (id, question_text, quiz_id) VALUES (25, 'Quelle est la forme correcte du conditionnel présent pour "avoir"?', @francais_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (57, 'J''aurais', 1, 25);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (58, 'J''aurai', 0, 25);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (59, 'J''avais', 0, 25);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (60, 'J''aurais eu', 0, 25);

-- ========================================
-- CHIMIE - 10 Additional Questions
-- ========================================
SET @chimie_quiz_id = (SELECT id FROM quizzes WHERE title = 'Chimie' LIMIT 1);

-- Question 6: Chemical equations (correct answer is 3rd option)
INSERT INTO question (id, question_text, quiz_id) VALUES (36, 'Quelle est l''équation chimique équilibrée pour la combustion du méthane?', @chimie_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (61, 'CH4 + O2 → CO2 + H2O', 0, 36);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (62, 'CH4 + O → CO2 + H2', 0, 36);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (63, 'CH4 + 2O2 → CO2 + 2H2O', 1, 36);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (64, 'CH4 + O2 → CO + H2O', 0, 36);

-- Question 7: Molar mass (correct answer is 2nd option)
INSERT INTO question (id, question_text, quiz_id) VALUES (37, 'Quelle est la masse molaire approximative de l''eau (H2O)?', @chimie_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (65, '10 g/mol', 0, 37);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (66, '18 g/mol', 1, 37);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (67, '20 g/mol', 0, 37);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (68, '16 g/mol', 0, 37);

-- Question 8: Oxidation states (correct answer is 4th option)
INSERT INTO question (id, question_text, quiz_id) VALUES (38, 'Quel est l''état d''oxydation de l''oxygène dans H2O2?', @chimie_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (69, '-2', 0, 38);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (70, '-1', 0, 38);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (71, '0', 0, 38);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (72, '-1', 1, 38);

-- Question 9: Chemical families (correct answer is 1st option)
INSERT INTO question (id, question_text, quiz_id) VALUES (39, 'À quelle famille chimique appartient le sodium (Na)?', @chimie_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (73, 'Alcalins', 1, 39);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (74, 'Alcalino-terreux', 0, 39);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (75, 'Halogènes', 0, 39);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (76, 'Gaz nobles', 0, 39);

-- Question 10: Solutions (correct answer is 2nd option)
INSERT INTO question (id, question_text, quiz_id) VALUES (40, 'Qu''est-ce qu''un solvant polaire?', @chimie_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (77, 'Un solvant qui ne dissout rien', 0, 40);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (78, 'Un solvant avec des pôles positifs et négatifs', 1, 40);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (79, 'Un solvant uniquement pour les gaz', 0, 40);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (80, 'Un solvant qui ne contient que de l''eau', 0, 40);

-- Question 11: Gas laws (correct answer is 3rd option)
INSERT INTO question (id, question_text, quiz_id) VALUES (41, 'Quelle loi décrit la relation entre pression et volume d''un gaz?', @chimie_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (81, 'Loi de Gay-Lussac', 0, 41);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (82, 'Loi de Charles', 0, 41);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (83, 'Loi de Boyle-Mariotte', 1, 41);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (84, 'Loi d''Avogadro', 0, 41);

-- Question 12: Organic chemistry (correct answer is 1st option)
INSERT INTO question (id, question_text, quiz_id) VALUES (42, 'Quelle est la formule générale des alcanes?', @chimie_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (85, 'CnH2n+2', 1, 42);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (86, 'CnH2n', 0, 42);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (87, 'CnH2n-2', 0, 42);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (88, 'CnH2n+1', 0, 42);

-- Question 13: Acids and bases (correct answer is 4th option)
INSERT INTO question (id, question_text, quiz_id) VALUES (43, 'Quel est l''acide le plus fort parmi ces options?', @chimie_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (89, 'Acide acétique', 0, 43);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (90, 'Acide citrique', 0, 43);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (91, 'Acide carbonique', 0, 43);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (92, 'Acide chlorhydrique', 1, 43);

-- Question 14: Redox reactions (correct answer is 2nd option)
INSERT INTO question (id, question_text, quiz_id) VALUES (44, 'Que signifie "rédox" en chimie?', @chimie_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (93, 'Réduction uniquement', 0, 44);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (94, 'Réduction et oxydation simultanées', 1, 44);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (95, 'Oxydation uniquement', 0, 44);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (96, 'Réaction acide-base', 0, 44);

-- Question 15: Concentration (correct answer is 1st option)
INSERT INTO question (id, question_text, quiz_id) VALUES (45, 'Comment calcule-t-on la molarité d''une solution?', @chimie_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (97, 'Moles de soluté / Volume de solution (L)', 1, 45);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (98, 'Masse de soluté / Volume de solution (L)', 0, 45);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (99, 'Moles de soluté / Masse de solvant (kg)', 0, 45);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (100, 'Volume de soluté / Volume de solution (L)', 0, 45);

-- ========================================
-- MATHÉMATIQUES - 10 Additional Questions
-- ========================================
SET @math_quiz_id = (SELECT id FROM quizzes WHERE title = 'Mathématiques' LIMIT 1);

-- Question 6: Fractions (correct answer is 3rd option)
INSERT INTO question (id, question_text, quiz_id) VALUES (46, 'Quelle est la forme simplifiée de 12/18?', @math_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (101, '4/6', 0, 46);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (102, '6/9', 0, 46);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (103, '2/3', 1, 46);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (104, '3/4', 0, 46);

-- Question 7: Percentages (correct answer is 1st option)
INSERT INTO question (id, question_text, quiz_id) VALUES (47, 'Quel est 25% de 80?', @math_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (105, '20', 1, 47);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (106, '25', 0, 47);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (107, '30', 0, 47);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (108, '15', 0, 47);

-- Question 8: Algebra (correct answer is 2nd option)
INSERT INTO question (id, question_text, quiz_id) VALUES (48, 'Quelle est la valeur de x dans l''équation 2x + 5 = 13?', @math_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (109, 'x = 3', 0, 48);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (110, 'x = 4', 1, 48);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (111, 'x = 5', 0, 48);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (112, 'x = 6', 0, 48);

-- Question 9: Geometry (correct answer is 4th option)
INSERT INTO question (id, question_text, quiz_id) VALUES (49, 'Quelle est l''aire d''un carré de côté 5 cm?', @math_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (113, '10 cm²', 0, 49);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (114, '15 cm²', 0, 49);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (115, '20 cm²', 0, 49);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (116, '25 cm²', 1, 49);

-- Question 10: Exponents (correct answer is 2nd option)
INSERT INTO question (id, question_text, quiz_id) VALUES (50, 'Quelle est la valeur de 2³?', @math_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (117, '4', 0, 50);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (118, '8', 1, 50);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (119, '6', 0, 50);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (120, '9', 0, 50);

-- Question 11: Square roots (correct answer is 3rd option)
INSERT INTO question (id, question_text, quiz_id) VALUES (51, 'Quelle est la racine carrée de 144?', @math_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (121, '10', 0, 51);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (122, '11', 0, 51);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (123, '12', 1, 51);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (124, '13', 0, 51);

-- Question 12: Proportions (correct answer is 1st option)
INSERT INTO question (id, question_text, quiz_id) VALUES (52, 'Si 3 pommes coûtent 6€, combien coûtent 5 pommes?', @math_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (125, '10€', 1, 52);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (126, '8€', 0, 52);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (127, '12€', 0, 52);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (128, '9€', 0, 52);

-- Question 13: Angles (correct answer is 4th option)
INSERT INTO question (id, question_text, quiz_id) VALUES (53, 'Quelle est la somme des angles d''un triangle?', @math_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (129, '90°', 0, 53);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (130, '120°', 0, 53);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (131, '150°', 0, 53);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (132, '180°', 1, 53);

-- Question 14: Decimals (correct answer is 2nd option)
INSERT INTO question (id, question_text, quiz_id) VALUES (54, 'Quelle est la forme décimale de 3/4?', @math_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (133, '0.5', 0, 54);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (134, '0.75', 1, 54);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (135, '0.25', 0, 54);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (136, '0.8', 0, 54);

-- Question 15: Statistics (correct answer is 1st option)
INSERT INTO question (id, question_text, quiz_id) VALUES (55, 'Quelle est la moyenne de 4, 8, et 12?', @math_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (137, '8', 1, 55);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (138, '10', 0, 55);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (139, '12', 0, 55);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (140, '6', 0, 55);

-- Re-enable safe mode
SET SQL_SAFE_UPDATES = 1;
