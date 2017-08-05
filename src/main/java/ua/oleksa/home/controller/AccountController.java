package ua.oleksa.home.controller;

import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import ua.oleksa.home.persistence.domain.User;
import ua.oleksa.home.persistence.service.AccountService;
import ua.oleksa.home.persistence.service.UserService;

import java.security.Principal;

/**
 * Created by Admin on 04.08.2017.
 */
@Controller
public class AccountController {

    @Autowired
    AccountService accountService;

    @Autowired
    UserService userService;

    @RequestMapping(value = "/account/page",method = RequestMethod.GET)
    public String accountPage(Model model,Principal principal){
        User user = userService.findByLogin(principal.getName());
        model.addAttribute("user",user);
        return "account";
    }

    @RequestMapping(value = "/add/account",method = RequestMethod.POST)
    public String addAccount(Model model, Principal principal,
                             @RequestParam("accountName")String name,
                             @RequestParam("balance")double balance){
        User user = userService.findByLogin(principal.getName());
        accountService.add(name,balance);
        model.addAttribute("user",user);
        return "home";
    }

}
