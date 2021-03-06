package ua.oleksa.home.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import ua.oleksa.home.persistence.domain.Account;
import ua.oleksa.home.persistence.domain.Income;
import ua.oleksa.home.persistence.domain.User;
import ua.oleksa.home.persistence.service.AccountService;
import ua.oleksa.home.persistence.service.IncomeService;
import ua.oleksa.home.persistence.service.UserService;

import java.security.Principal;
import java.sql.Date;
import java.util.*;

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

    @RequestMapping(value = "/income/page",method = RequestMethod.GET)
    public String incomePage(Model model, Principal principal){
        User user = userService.findByLogin(principal.getName());
        List<Account> accountList = accountService.findAccountByUser(user);
        model.addAttribute("accountList",accountList);
        model.addAttribute("user",user);
        return "addIncome";
    }
    @RequestMapping(value = "/add/income",method = RequestMethod.POST)
    public String addIncome(Principal principal,
                            @RequestParam("description")String description,
                            @RequestParam("sum")double sum,
                            @RequestParam("account")int id){
        User user = userService.findByLogin(principal.getName());
        java.util.Calendar calendar = Calendar.getInstance();
        Date date = new Date(calendar.getTime().getTime());
        Account account = accountService.findOne(id);
        account.setBalance(sum+account.getBalance());
        accountService.update(account);
        incomeService.add(description,sum,date,user,account);
        return "redirect:/view/income";
    }
    @RequestMapping(value = "/view/income",method = RequestMethod.GET)
    public String viewIncome(Model model,Principal principal){
        User user = userService.findByLogin(principal.getName());
        List<Income>incomeList = incomeService.findIncomeByUser(user);
        List<Account>accountList = accountService.findAccountByUser(user);
        Collections.reverse(incomeList);
        model.addAttribute("user",user);
        model.addAttribute("incomeList",incomeList);
        model.addAttribute("accountList",accountList);
        return "viewIncome";
    }
    @RequestMapping(value = "/delete/income/{id}",method = RequestMethod.GET)
    public String delete(@PathVariable Integer id,Principal principal){
        User user =userService.findByLogin(principal.getName());
        Income income = incomeService.findOne(id);
        incomeService.delete(id);
        return "redirect:/view/income";
    }
    @RequestMapping(value = "/find/all/income",method = RequestMethod.GET)
    @Transactional
    @ResponseBody
    public List<String>findAllIncome(){
       List<String> list= new ArrayList<>();
 list.add("aaaa");
        return list;
    }

}
