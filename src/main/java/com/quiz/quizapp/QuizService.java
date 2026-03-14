package com.quiz.quizapp;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;

@Service
public class QuizService {

    private final QuizRepository quizRepository;

    public QuizService(QuizRepository quizRepository) {
        this.quizRepository = quizRepository;
    }

    @Transactional(readOnly = true)
    public List<Question> getRandomQuestions(Long quizId, int count) {
        Quiz quiz = quizRepository.findById(quizId)
                .orElseThrow(() -> new RuntimeException("Quiz not found"));

        List<Question> allQuestions = quiz.getQuestions();
        if (allQuestions == null || allQuestions.isEmpty()) {
            return new ArrayList<>();
        }

        // Ensure answers are loaded before shuffling
        allQuestions.forEach(question -> question.getAnswers().size());

        // Create a copy and shuffle
        List<Question> shuffledQuestions = new ArrayList<>(allQuestions);
        Collections.shuffle(shuffledQuestions, new Random());

        // Return only the requested number of questions
        int questionsToReturn = Math.min(count, shuffledQuestions.size());
        List<Question> selectedQuestions = shuffledQuestions.subList(0, questionsToReturn);
        
        // Ensure answers are loaded for selected questions
        selectedQuestions.forEach(question -> question.getAnswers().size());
        
        return selectedQuestions;
    }

    @Transactional(readOnly = true)
    public int getQuestionCount(Long quizId) {
        Quiz quiz = quizRepository.findById(quizId)
                .orElseThrow(() -> new RuntimeException("Quiz not found"));

        List<Question> questions = quiz.getQuestions();
        return questions != null ? questions.size() : 0;
    }
}
