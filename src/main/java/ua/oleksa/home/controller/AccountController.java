package ua.oleksa.home.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import ua.oleksa.home.persistence.domain.Account;
import ua.oleksa.home.persistence.domain.Currency;
import ua.oleksa.home.persistence.domain.User;
import ua.oleksa.home.persistence.service.AccountService;
import ua.oleksa.home.persistence.service.CurrencyService;
import ua.oleksa.home.persistence.service.UserService;

import java.security.Principal;
import java.sql.Date;
import java.util.Calendar;
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

    @Autowired
    CurrencyService currencyService;

    @RequestMapping(value = "/account/page",method = RequestMethod.GET)
    public String accountPage(Model model,Principal principal){
        User user = userService.findByLogin(principal.getName());
        List<Currency>currencyList = currencyService.findAll();
        model.addAttribute("user",user);
        model.addAttribute("currencyList",currencyList);
        return "addAccount";
    }

    @RequestMapping(value = "/add/account",method = RequestMethod.POST)
    public String addAccount(Principal principal,
                             @RequestParam("accountName")String name,
                             @RequestParam("balance")double balance,
                             @RequestParam("currency")int id){
        User user = userService.findByLogin(principal.getName());
        java.util.Calendar calendar = Calendar.getInstance();
        Date date = new Date(calendar.getTime().getTime());
        Currency currency = currencyService.findOne(id);
        accountService.add(name,balance,date,user,currency);
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
