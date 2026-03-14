-- French Language Questions for "Français Basique" Quiz
-- Replace existing geography questions with French grammar questions

-- First, delete existing questions and answers for "Français Basique" quiz (assuming quiz_id = 1)
-- Note: Adjust the quiz_id based on your actual database

DELETE FROM answer WHERE question_id IN (
    SELECT id FROM question WHERE quiz_id = 1
);

DELETE FROM question WHERE quiz_id = 1;

-- Insert new French grammar questions

-- Question 1: Conjugation of "être" (to be)
INSERT INTO question (id, question_text, quiz_id) VALUES (1, 'Quelle est la conjugaison correcte du verbe "être" au présent avec "je"?', 1);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (1, 'Je suis', 1, 1);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (2, 'Je es', 0, 1);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (3, 'Je et', 0, 1);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (4, 'Je est', 0, 1);

-- Question 2: Gender of nouns
INSERT INTO question (id, question_text, quiz_id) VALUES (2, 'Quel article doit précéder le mot "table" (féminin)?', 1);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (5, 'La table', 1, 2);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (6, 'Le table', 0, 2);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (7, 'Les table', 0, 2);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (8, 'Un table', 0, 2);

-- Question 3: Past tense (passé composé)
INSERT INTO question (id, question_text, quiz_id) VALUES (3, 'Comment forme-t-on le passé composé avec "avoir"?', 1);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (9, 'Sujet + avoir + participe passé', 1, 3);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (10, 'Sujet + être + participe passé', 0, 3);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (11, 'Sujet + infinitif', 0, 3);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (12, 'Sujet + imparfait', 0, 3);

-- Question 4: Plural formation
INSERT INTO question (id, question_text, quiz_id) VALUES (4, 'Quel est le pluriel correct de "cheval"?', 1);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (13, 'Les chevaux', 1, 4);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (14, 'Les chevals', 0, 4);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (15, 'Les chevauxs', 0, 4);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (16, 'Les chevauxes', 0, 4);

-- Question 5: Adjective agreement
INSERT INTO question (id, question_text, quiz_id) VALUES (5, 'Comment s\'accorde l\'adjectif "beau" avec "femme" (féminin)?', 1);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (17, 'Belle', 1, 5);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (18, 'Beau', 0, 5);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (19, 'Beaux', 0, 5);
INSERT INTO answer (id, answer_text, correct, question_id) VALUES (20, 'Belles', 0, 5);
