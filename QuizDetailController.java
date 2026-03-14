package com.quiz.quizapp;

import com.quiz.quizapp.Quiz;
import com.quiz.quizapp.QuizRepository;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.server.ResponseStatusException;

@Controller
@RequestMapping("/quiz")
public class QuizDetailController {

    private final QuizRepository quizRepository;

    public QuizDetailController(QuizRepository quizRepository) {
        this.quizRepository = quizRepository;
    }

    @GetMapping("/{id}")
    public String showQuizDetail(@PathVariable Long id, Model model) {
        Quiz quiz = quizRepository.findById(id)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND));

        model.addAttribute("quiz", quiz);
        return "quiz_detail";
    }
}

