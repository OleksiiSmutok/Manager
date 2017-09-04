package ua.oleksa.home.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ua.oleksa.home.persistence.domain.User;
import ua.oleksa.home.persistence.service.UserService;

import javax.validation.Valid;

/**
 * Created by Admin on 05.08.2017.
 */
@Controller
public class RegistrationController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/registration",method = RequestMethod.GET)
    public String registration(Model model){
        model.addAttribute("user",new User());
        return "registration";
    }
    @RequestMapping(value = "/registration/processing",method = RequestMethod.POST)
    public String registrationProcessing(@Valid @ModelAttribute("user") User user, BindingResult bindingResult){
        if(bindingResult.hasErrors()){
            return "registration";
        }
        userService.add(user);
        return "redirect:/loginPage";
    }
}
