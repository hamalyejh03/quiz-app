package com.quiz.quizapp;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.server.ResponseStatusException;

@Controller
public class WelcomeController {

    private final QuizRepository quizRepository;

    public WelcomeController(QuizRepository quizRepository) {
        this.quizRepository = quizRepository;
    }

    @GetMapping("/welcome")
    public String welcome(@RequestParam("quizId") Long quizId, Model model) {
        Quiz quiz = quizRepository.findById(quizId)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Quiz not found"));
        model.addAttribute("title", "Bienvenue dans EJHQuizz");
        model.addAttribute("quiz", quiz);
        return "welcome";
    }
}

