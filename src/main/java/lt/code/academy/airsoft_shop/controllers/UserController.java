package lt.code.academy.airsoft_shop.controllers;

import lombok.RequiredArgsConstructor;
import lt.code.academy.airsoft_shop.models.User;
import lt.code.academy.airsoft_shop.services.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequiredArgsConstructor
public class UserController {
    private final UserService userService;

    @GetMapping("/login")
    public String login() {
        return "login";
    }
    @GetMapping("/registration")
    public String registration() {
        return "registration";
    }
    @PostMapping("/registration")
    public String createUser(@ModelAttribute("user") User user, Model model) {
        if (!userService.createUser(user)) {
            model.addAttribute("errorMessage", "User with mail: " + user.getEmail() + " exists");
            return "registration";
        }
        return "redirect:/login";
    }


}