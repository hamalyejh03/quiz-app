package com.quiz.quizapp;

import jakarta.servlet.http.HttpServletRequest;
import java.util.List;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.server.ResponseStatusException;

@Controller
public class StepQuizController {

    private final QuizRepository quizRepository;
    private final AnswerRepository answerRepository;

    public StepQuizController(QuizRepository quizRepository, AnswerRepository answerRepository) {
        this.quizRepository = quizRepository;
        this.answerRepository = answerRepository;
    }

    @GetMapping("/step-quiz/start")
    public String startStepQuiz(@RequestParam("quizId") Long quizId, Model model) {
        Quiz quiz = quizRepository.findById(quizId)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Quiz not found"));

        List<Question> questions = quiz.getQuestions();
        if (questions == null || questions.isEmpty()) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Quiz has no questions");
        }

        int totalQuestions = questions.size();
        int currentIndex = 0;

        Question currentQuestion = questions.get(currentIndex);

        model.addAttribute("quizId", quiz.getId());
        model.addAttribute("question", currentQuestion);
        model.addAttribute("currentIndex", currentIndex);
        model.addAttribute("totalQuestions", totalQuestions);
        model.addAttribute("correctCount", 0);

        return "step_quiz";
    }

    @PostMapping("/step-quiz/next")
    public String nextQuestion(@RequestParam("quizId") Long quizId,
                               @RequestParam("questionId") Long questionId,
                               @RequestParam("currentIndex") int currentIndex,
                               @RequestParam("totalQuestions") int totalQuestions,
                               @RequestParam(value = "correctCount") int correctCount,
                               @RequestParam(value = "selectedAnswerId", required = false) Long selectedAnswerId,
                               HttpServletRequest request,
                               Model model) {

        if (selectedAnswerId != null) {
            Answer selectedAnswer = answerRepository.findById(selectedAnswerId).orElse(null);
            if (selectedAnswer != null && Boolean.TRUE.equals(selectedAnswer.getCorrect())) {
                correctCount++;
            }
        }

        currentIndex++;

        if (currentIndex >= totalQuestions) {
            double percentage = totalQuestions == 0 ? 0.0 : (correctCount * 100.0) / totalQuestions;

            model.addAttribute("correctCount", correctCount);
            model.addAttribute("totalQuestions", totalQuestions);
            model.addAttribute("percentage", percentage);

            return "result";
        }

        Quiz quiz = quizRepository.findById(quizId)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND));

        List<Question> questions = quiz.getQuestions();
        if (questions == null || questions.isEmpty() || currentIndex >= questions.size()) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Invalid question index");
        }

        Question currentQuestion = questions.get(currentIndex);

        model.addAttribute("quizId", quiz.getId());
        model.addAttribute("question", currentQuestion);
        model.addAttribute("currentIndex", currentIndex);
        model.addAttribute("totalQuestions", totalQuestions);
        model.addAttribute("correctCount", correctCount);

        return "step_quiz";
    }
}

