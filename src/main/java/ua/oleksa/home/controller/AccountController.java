package ua.oleksa.home.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import ua.oleksa.home.persistence.domain.Account;
import ua.oleksa.home.persistence.domain.User;
import ua.oleksa.home.persistence.service.AccountService;
import ua.oleksa.home.persistence.service.UserService;

import java.security.Principal;
import java.util.List;

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
        return "addAccount";
    }

    @RequestMapping(value = "/add/account",method = RequestMethod.POST)
    public String addAccount(Model model,Principal principal,
                             @RequestParam("accountName")String name,
                             @RequestParam("balance")double balance){
        User user = userService.findByLogin(principal.getName());
        model.addAttribute("user",user);
        accountService.add(name,balance,user);
        return "addAccount";
    }

    @RequestMapping(value = "/view/account",method = RequestMethod.GET)
    public String viewAccount(Model model, Principal principal){
        User user = userService.findByLogin(principal.getName());
        List<Account>accountList = accountService.findAccountByUser(user);
        model.addAttribute("accountList",accountList);
        model.addAttribute("user",user);
        return "viewAccount";
    }

}
