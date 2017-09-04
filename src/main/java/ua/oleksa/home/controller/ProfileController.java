package ua.oleksa.home.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import ua.oleksa.home.persistence.domain.User;
import ua.oleksa.home.persistence.service.UserService;

import javax.validation.Valid;
import java.security.Principal;

/**
 * Created by Admin on 15.08.2017.
 */
@Controller
public class ProfileController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/profile/page",method = RequestMethod.GET)
    public String profilePage(Model model, Principal principal){
        User user = userService.findByLogin(principal.getName());
        model.addAttribute("user",user);
        return "profilePage";
    }

    @RequestMapping(value = "/edit/user/{id}",method = RequestMethod.POST)
    public String editUser(@PathVariable Integer id,@Valid @ModelAttribute("user")User user,
                           BindingResult bindingResult,Principal principal,
                           @RequestParam("firstName")String firstName,
                           @RequestParam("secondName")String secondName,
                           @RequestParam("email")String email,
                           @RequestParam("phone")String phone,
                           @RequestParam("login")String login,
                           @RequestParam("password")String password){
        User user1 = userService.findByLogin(principal.getName());
        if (bindingResult.hasErrors()){
            return "profilePage";
        }
        userService.edit(id, firstName,secondName,email,phone,login,password);
        return "profilePage";
    }
}
