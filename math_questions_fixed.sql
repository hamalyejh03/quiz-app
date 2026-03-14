-- Extended Math Questions for "Mathématiques" Quiz
-- Add 10 more questions to reach 15 total questions
-- New questions: 10 (IDs 46-55)

-- Get the quiz_id for "Mathématiques"
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
