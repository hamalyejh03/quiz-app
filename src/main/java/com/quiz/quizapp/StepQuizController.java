package com.quiz.quizapp;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
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

    private final AnswerRepository answerRepository;
    private final QuizService quizService;

    public StepQuizController(AnswerRepository answerRepository, QuizService quizService) {
        this.answerRepository = answerRepository;
        this.quizService = quizService;
    }

    @GetMapping("/step-quiz/start")
    public String startStepQuiz(@RequestParam("quizId") Long quizId, HttpSession session, Model model) {
        try {
            // Get 5 random questions for this quiz
            List<Question> selectedQuestions = quizService.getRandomQuestions(quizId, 5);
            
            if (selectedQuestions.isEmpty()) {
                throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Quiz has no questions");
            }

            // Store selected questions in session
            session.setAttribute("selectedQuestions", selectedQuestions);
            session.setAttribute("currentQuestionIndex", 0);
            session.setAttribute("correctCount", 0);
            session.setAttribute("totalQuestions", selectedQuestions.size());
            session.setAttribute("quizId", quizId);

            // Show first question
            Question currentQuestion = selectedQuestions.get(0);

            model.addAttribute("quizId", quizId);
            model.addAttribute("question", currentQuestion);
            model.addAttribute("currentIndex", 0);
            model.addAttribute("totalQuestions", selectedQuestions.size());
            model.addAttribute("correctCount", 0);

            return "step_quiz";
        } catch (Exception e) {
            System.err.println("Error in startStepQuiz: " + e.getMessage());
            e.printStackTrace();
            throw new ResponseStatusException(HttpStatus.INTERNAL_SERVER_ERROR, "Error starting quiz: " + e.getMessage());
        }
    }

    @PostMapping("/step-quiz/next")
    public String nextQuestion(@RequestParam("quizId") Long quizId,
                               @RequestParam("questionId") Long questionId,
                               @RequestParam("currentIndex") int currentIndex,
                               @RequestParam("totalQuestions") int totalQuestions,
                               @RequestParam(value = "correctCount") int correctCount,
                               @RequestParam(value = "selectedAnswerId", required = false) Long selectedAnswerId,
                               HttpSession session,
                               HttpServletRequest request,
                               Model model) {
        try {
            // Process answer
            if (selectedAnswerId != null) {
                Answer selectedAnswer = answerRepository.findById(selectedAnswerId).orElse(null);
                if (selectedAnswer != null && Boolean.TRUE.equals(selectedAnswer.getCorrect())) {
                    correctCount++;
                    session.setAttribute("correctCount", correctCount);
                }
            }

            currentIndex++;
            session.setAttribute("currentQuestionIndex", currentIndex);

            // Check if quiz is completed
            if (currentIndex >= totalQuestions) {
                // Quiz completed - redirect to result page with parameters
                return "redirect:/step-quiz/result?quizId=" + quizId + "&correctCount=" + correctCount + "&totalQuestions=" + totalQuestions;
            }

            // Redirect to next question with parameters
            return "redirect:/step-quiz/question?quizId=" + quizId + "&currentIndex=" + currentIndex + "&correctCount=" + correctCount;
        } catch (Exception e) {
            System.err.println("Error in nextQuestion: " + e.getMessage());
            e.printStackTrace();
            throw new ResponseStatusException(HttpStatus.INTERNAL_SERVER_ERROR, "Error processing next question: " + e.getMessage());
        }
    }

    @GetMapping("/step-quiz/question")
    public String showQuestion(@RequestParam("quizId") Long quizId,
                              @RequestParam("currentIndex") int currentIndex,
                              @RequestParam("correctCount") int correctCount,
                              HttpSession session,
                              Model model) {
        try {
            // Get questions from session
            @SuppressWarnings("unchecked")
            List<Question> selectedQuestions = (List<Question>) session.getAttribute("selectedQuestions");
            
            if (selectedQuestions == null || currentIndex >= selectedQuestions.size()) {
                throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Invalid question index");
            }

            Question currentQuestion = selectedQuestions.get(currentIndex);
            int totalQuestions = selectedQuestions.size();

            model.addAttribute("quizId", quizId);
            model.addAttribute("question", currentQuestion);
            model.addAttribute("currentIndex", currentIndex);
            model.addAttribute("totalQuestions", totalQuestions);
            model.addAttribute("correctCount", correctCount);

            return "step_quiz";
        } catch (Exception e) {
            System.err.println("Error in showQuestion: " + e.getMessage());
            e.printStackTrace();
            throw new ResponseStatusException(HttpStatus.INTERNAL_SERVER_ERROR, "Error showing question: " + e.getMessage());
        }
    }

    @GetMapping("/step-quiz/result")
    public String showResult(@RequestParam("quizId") Long quizId,
                            @RequestParam("correctCount") int correctCount,
                            @RequestParam("totalQuestions") int totalQuestions,
                            Model model) {
        try {
            double percentage = totalQuestions == 0 ? 0.0 : (correctCount * 100.0) / totalQuestions;

            model.addAttribute("correctCount", correctCount);
            model.addAttribute("totalQuestions", totalQuestions);
            model.addAttribute("percentage", percentage);
            model.addAttribute("quizId", quizId);

            return "result";
        } catch (Exception e) {
            System.err.println("Error in showResult: " + e.getMessage());
            e.printStackTrace();
            throw new ResponseStatusException(HttpStatus.INTERNAL_SERVER_ERROR, "Error showing result: " + e.getMessage());
        }
    }
}

