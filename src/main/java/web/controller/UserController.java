package web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import web.model.User;
import web.service.UserService;

@Controller
@RequestMapping("/users")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(Model model) {
        model.addAttribute("users", userService.getAllUsers());
        return "users/index";
    }

    @RequestMapping(value = "/new", method = RequestMethod.GET)
    public String addNewUser(Model model) {
        model.addAttribute("user", new User());
        return "users/new";
    }

    @RequestMapping(value = "/saveUser", method = RequestMethod.POST)
    public String saveUser(@ModelAttribute("user") User user) {
        userService.saveUser(user);
        return "redirect:/users/";
    }

    @RequestMapping(value = "/updateInfo", method = RequestMethod.POST)
    public String updateUser(@RequestParam("userId") int id, Model model) {
        model.addAttribute("user", userService.getUser(id));
        return "users/new";
    }

    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public String deleteUser(@RequestParam("userId") int id) {
        userService.deleteUser(id);
        return "redirect:/users/";
    }
}
