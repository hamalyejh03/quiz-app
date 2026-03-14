-- Extended Chemistry Questions for "Chimie" Quiz
-- Add 10 more questions to reach 15 total questions
-- Current questions: 5 (IDs 21-25)
-- New questions: 10 (IDs 36-45)

-- Get the quiz_id for "Chimie"
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
