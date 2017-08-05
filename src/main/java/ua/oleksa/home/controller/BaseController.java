package ua.oleksa.home.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ua.oleksa.home.persistence.domain.User;
import ua.oleksa.home.persistence.service.UserService;

import java.security.Principal;
import java.util.List;

/**
 * Created by Admin on 31.05.2017.
 */
@Controller
public class BaseController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/",method = RequestMethod.GET)
    public String home(Model model, Principal principal){
        User user = userService.findByLogin(principal.getName());
        model.addAttribute("user",user);
        return "home";
    }


    @RequestMapping(value = "/loginPage", method = RequestMethod.GET)
    public String login(){
        return "loginPage";
    }

    @RequestMapping(value = "/registration",method = RequestMethod.GET)
    public String registration(Model model){
        model.addAttribute("user",new User());
        return "registration";
    }
    @RequestMapping(value = "/registration/processing",method = RequestMethod.POST)
    public String registrationProcessing(@ModelAttribute User user, BindingResult bindingResult){
        userService.add(user);
        return "redirect:/loginPage";
    }
}
