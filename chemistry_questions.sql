-- Chemistry Questions for "Chimie" Quiz
-- Update quiz title from "Géographie" to "Chimie" and replace geography questions with chemistry questions

-- First, update the quiz title (safer approach for safe mode)
UPDATE quiz SET title = 'Chimie' WHERE title = 'Géographie' AND id IS NOT NULL;

-- Get the quiz_id for "Chimie" (you may need to adjust this based on your actual database)
SET @chimie_quiz_id = (SELECT id FROM quiz WHERE title = 'Chimie' LIMIT 1);

-- Delete existing questions and answers for the chemistry quiz
DELETE FROM answer WHERE question_id IN (
    SELECT id FROM question WHERE quiz_id = @chimie_quiz_id
);

DELETE FROM question WHERE quiz_id = @chimie_quiz_id;

-- Insert new chemistry questions

-- Question 1: Atomic structure (correct answer is 3rd option)
INSERT INTO question (id, question_text, quiz_id) VALUES (21, 'Quelle est la particule chargée positivement dans un atome?', @chimie_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (41, 'Électron', 0, 21);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (42, 'Neutron', 0, 21);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (43, 'Proton', 1, 21);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (44, 'Noyau', 0, 21);

-- Question 2: Chemical bonding (correct answer is 2nd option)
INSERT INTO question (id, question_text, quiz_id) VALUES (22, 'Quelle liaison chimique partage des paires d''électrons entre atomes?', @chimie_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (45, 'Liaison ionique', 0, 22);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (46, 'Liaison covalente', 1, 22);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (47, 'Liaison métallique', 0, 22);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (48, 'Liaison hydrogène', 0, 22);

-- Question 3: Periodic table (correct answer is 4th option)
INSERT INTO question (id, question_text, quiz_id) VALUES (23, 'Quel élément chimique a le symbole ''Au''?', @chimie_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (49, 'Argent', 0, 23);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (50, 'Aluminium', 0, 23);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (51, 'Argon', 0, 23);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (52, 'Or', 1, 23);

-- Question 4: Chemical reactions (correct answer is 1st option)
INSERT INTO question (id, question_text, quiz_id) VALUES (24, 'Quelle est la formule chimique de l''eau?', @chimie_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (53, 'H2O', 1, 24);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (54, 'CO2', 0, 24);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (55, 'O2', 0, 24);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (56, 'H2', 0, 24);

-- Question 5: Acids and bases (correct answer is 2nd option)
INSERT INTO question (id, question_text, quiz_id) VALUES (25, 'Quel pH caractérise une solution neutre?', @chimie_quiz_id);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (57, 'pH 0', 0, 25);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (58, 'pH 7', 1, 25);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (59, 'pH 14', 0, 25);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (60, 'pH 1', 0, 25);
