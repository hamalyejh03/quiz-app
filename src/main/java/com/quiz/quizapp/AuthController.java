package com.quiz.quizapp;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class AuthController {

    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;

    public AuthController(UserRepository userRepository, PasswordEncoder passwordEncoder) {
        this.userRepository = userRepository;
        this.passwordEncoder = passwordEncoder;
    }

    @GetMapping("/login")
    public String login(@RequestParam(value = "error", required = false) String error,
                       @RequestParam(value = "logout", required = false) String logout,
                       Model model) {
        if (error != null) {
            model.addAttribute("error", "Invalid email or password");
        }
        if (logout != null) {
            model.addAttribute("message", "You have been logged out successfully");
        }
        return "login";
    }

    @GetMapping("/register")
    public String showRegistrationForm(Model model) {
        return "register";
    }

    @PostMapping("/register")
    public String registerUser(@RequestParam("email") String email,
                              @RequestParam(value = "name", required = false) String name,
                              @RequestParam("password") String password,
                              RedirectAttributes redirectAttributes) {
        
        if (userRepository.existsByEmail(email)) {
            redirectAttributes.addAttribute("error", "Email already exists");
            return "redirect:/register";
        }

        // Generate default name if not provided, null, or empty
        if (name == null || name.trim().isEmpty()) {
            // Alternate between "Utilisateur" and "Player" based on system time
            long currentTime = System.currentTimeMillis();
            name = (currentTime % 2 == 0) ? "Utilisateur" : "Player";
        }

        User user = new User();
        user.setEmail(email);
        user.setName(name);
        user.setPassword(passwordEncoder.encode(password));
        
        userRepository.save(user);
        
        redirectAttributes.addAttribute("message", "Registration successful! Please login.");
        return "redirect:/login";
    }
}
