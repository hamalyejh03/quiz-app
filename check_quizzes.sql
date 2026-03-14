-- Check current quiz titles and IDs
-- Run this to identify the correct quiz_id for "Géographie"

SELECT id, title, category FROM quiz;

-- After identifying the quiz_id, use it in the chemistry_questions.sql file
-- Replace @chimie_quiz_id with the actual ID from the query above
