package ua.oleksa.home.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ua.oleksa.home.persistence.domain.Account;
import ua.oleksa.home.persistence.domain.User;
import ua.oleksa.home.persistence.service.AccountService;
import ua.oleksa.home.persistence.service.IncomeService;
import ua.oleksa.home.persistence.service.UserService;

import java.security.Principal;
import java.util.List;

/**
 * Created by Admin on 05.08.2017.
 */
@Controller
public class IncomeController {

    @Autowired
    UserService userService;

    @Autowired
    AccountService accountService;

    @Autowired
    IncomeService incomeService;

    @RequestMapping(value = "/add/income",method = RequestMethod.GET)
    public String addIncome(Model model, Principal principal){
        User user = userService.findByLogin(principal.getName());
        List<Account> accountList = accountService.findAccountByUser(user);
        model.addAttribute("accountList",accountList);
        model.addAttribute("user",user);
        return "addIncome";
    }

}
