-- Extended Math Questions for "Mathématiques" Quiz
-- Add 10 more questions to reach 15 total questions
-- First, let's check existing questions and add 10 more
-- Assume existing questions have IDs 1-5, new questions will be 6-15

-- Get the quiz_id for "Mathématiques"
SET @math_quiz_id = (SELECT id FROM quizzes WHERE title = 'Mathématiques' LIMIT 1);

-- Question 6: Fractions (correct answer is 3rd option)
INSERT INTO question (id, question_text, quiz_id) VALUES (36, 'Quelle est la forme simplifiée de 12/18?', @math_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (21, '4/6', 0, 36);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (22, '6/9', 0, 36);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (23, '2/3', 1, 36);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (24, '3/4', 0, 36);

-- Question 7: Percentages (correct answer is 1st option)
INSERT INTO question (id, question_text, quiz_id) VALUES (37, 'Quel est 25% de 80?', @math_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (25, '20', 1, 37);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (26, '25', 0, 37);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (27, '30', 0, 37);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (28, '15', 0, 37);

-- Question 8: Algebra (correct answer is 2nd option)
INSERT INTO question (id, question_text, quiz_id) VALUES (38, 'Quelle est la valeur de x dans l''équation 2x + 5 = 13?', @math_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (29, 'x = 3', 0, 38);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (30, 'x = 4', 1, 38);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (31, 'x = 5', 0, 38);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (32, 'x = 6', 0, 38);

-- Question 9: Geometry (correct answer is 4th option)
INSERT INTO question (id, question_text, quiz_id) VALUES (39, 'Quelle est l''aire d''un carré de côté 5 cm?', @math_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (33, '10 cm²', 0, 39);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (34, '15 cm²', 0, 39);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (35, '20 cm²', 0, 39);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (36, '25 cm²', 1, 39);

-- Question 10: Exponents (correct answer is 2nd option)
INSERT INTO question (id, question_text, quiz_id) VALUES (40, 'Quelle est la valeur de 2³?', @math_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (37, '4', 0, 40);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (38, '8', 1, 40);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (39, '6', 0, 40);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (40, '9', 0, 40);

-- Question 11: Square roots (correct answer is 3rd option)
INSERT INTO question (id, question_text, quiz_id) VALUES (41, 'Quelle est la racine carrée de 144?', @math_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (41, '10', 0, 41);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (42, '11', 0, 41);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (43, '12', 1, 41);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (44, '13', 0, 41);

-- Question 12: Proportions (correct answer is 1st option)
INSERT INTO question (id, question_text, quiz_id) VALUES (42, 'Si 3 pommes coûtent 6€, combien coûtent 5 pommes?', @math_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (45, '10€', 1, 42);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (46, '8€', 0, 42);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (47, '12€', 0, 42);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (48, '9€', 0, 42);

-- Question 13: Angles (correct answer is 4th option)
INSERT INTO question (id, question_text, quiz_id) VALUES (43, 'Quelle est la somme des angles d''un triangle?', @math_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (49, '90°', 0, 43);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (50, '120°', 0, 43);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (51, '150°', 0, 43);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (52, '180°', 1, 43);

-- Question 14: Decimals (correct answer is 2nd option)
INSERT INTO question (id, question_text, quiz_id) VALUES (44, 'Quelle est la forme décimale de 3/4?', @math_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (53, '0.5', 0, 44);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (54, '0.75', 1, 44);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (55, '0.25', 0, 44);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (56, '0.8', 0, 44);

-- Question 15: Statistics (correct answer is 1st option)
INSERT INTO question (id, question_text, quiz_id) VALUES (45, 'Quelle est la moyenne de 4, 8, et 12?', @math_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (57, '8', 1, 45);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (58, '10', 0, 45);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (59, '12', 0, 45);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (60, '6', 0, 45);
