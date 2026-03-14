package com.quiz.quizapp;

import jakarta.servlet.http.HttpServletRequest;
import java.util.List;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.server.ResponseStatusException;

@Controller
public class QuizSubmissionController {

    private final QuizRepository quizRepository;
    private final AnswerRepository answerRepository;

    public QuizSubmissionController(QuizRepository quizRepository, AnswerRepository answerRepository) {
        this.quizRepository = quizRepository;
        this.answerRepository = answerRepository;
    }

    @PostMapping("/submitQuiz")
    public String submitQuiz(@RequestParam("quizId") Long quizId,
                             HttpServletRequest request,
                             Model model) {

        Quiz quiz = quizRepository.findById(quizId)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND));

        List<Question> questions = quiz.getQuestions();
        int totalQuestions = questions != null ? questions.size() : 0;
        int correctCount = 0;

        if (questions != null) {
            for (Question question : questions) {
                String paramName = "question_" + question.getId();
                String selectedAnswerIdStr = request.getParameter(paramName);

                if (selectedAnswerIdStr == null || selectedAnswerIdStr.isEmpty()) {
                    continue;
                }

                Long selectedAnswerId = Long.valueOf(selectedAnswerIdStr);
                Answer selectedAnswer = answerRepository.findById(selectedAnswerId).orElse(null);

                if (selectedAnswer != null && Boolean.TRUE.equals(selectedAnswer.getCorrect())) {
                    correctCount++;
                }
            }
        }

        double percentage = totalQuestions == 0 ? 0.0 : (correctCount * 100.0) / totalQuestions;

        model.addAttribute("correctCount", correctCount);
        model.addAttribute("totalQuestions", totalQuestions);
        model.addAttribute("percentage", percentage);

        return "quiz_result";
    }
}

