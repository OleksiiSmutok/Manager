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

import javax.validation.Valid;


/**
 * Created by Admin on 31.05.2017.
 */
@Controller
public class LoginController {

    @Autowired
    UserService userService;

    @RequestMapping(value = "/loginPage", method = RequestMethod.GET)
    public String login(){
        return "loginPage";
    }

//    @RequestMapping(value = "/loginProcessing",method = RequestMethod.POST)
//    public String login(@Valid @ModelAttribute("user")User user,BindingResult bindingResult){
//        if (bindingResult.hasErrors()){
//            return "loginPage";
//        }
//        return "home";
//    }

}
