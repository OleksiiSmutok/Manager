package ua.oleksa.home.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import ua.oleksa.home.persistence.domain.Account;
import ua.oleksa.home.persistence.domain.Category;
import ua.oleksa.home.persistence.domain.Spending;
import ua.oleksa.home.persistence.domain.User;
import ua.oleksa.home.persistence.service.AccountService;
import ua.oleksa.home.persistence.service.CategoryService;
import ua.oleksa.home.persistence.service.SpendingService;
import ua.oleksa.home.persistence.service.UserService;

import java.security.Principal;
import java.sql.Date;
import java.util.Calendar;
import java.util.Collections;
import java.util.List;

/**
 * Created by Admin on 08.08.2017.
 */
@Controller
public class SpendingController {

    @Autowired
    private SpendingService spendingService;

    @Autowired
    private UserService userService;

    @Autowired
    private AccountService accountService;

    @Autowired
    private CategoryService categoryService;

    @RequestMapping(value = "/spending/page",method = RequestMethod.GET)
    public String spendingPage(Model model, Principal principal){
        User user = userService.findByLogin(principal.getName());
        List<Account>accountList = accountService.findAccountByUser(user);
        List<Category>categoryList = categoryService.findCategoryByUser(user);
        model.addAttribute("accountList",accountList);
        model.addAttribute("categoryList",categoryList);
        return "addSpending";
    }

    @RequestMapping(value = "/add/spending",method = RequestMethod.POST)
    public String addSpending(Principal principal,
                              @RequestParam("description")String description,
                              @RequestParam("sum")double sum,
                              @RequestParam("category")int idCategory,
                              @RequestParam("account")int idAccount){
        User user = userService.findByLogin(principal.getName());
        java.util.Calendar calendar = Calendar.getInstance();
        Date date = new Date(calendar.getTime().getTime());
        Category category = categoryService.findOne(idCategory);
        Account account = accountService.findOne(idAccount);
        category.setSum(sum + category.getSum());
        account.setBalance(account.getBalance() - sum);
        categoryService.update(category);
        accountService.update(account);
        spendingService.add(description,sum,date,category,account,user);
        return "redirect:/view/spending";
    }

    @RequestMapping(value = "/add/spending/to/one/category/{id}",method = RequestMethod.POST)
    public String addSpendingToOneCategory(@PathVariable Integer id,Principal principal,
                                           @RequestParam("description")String description,
                                           @RequestParam("sum")double sum,
                                           @RequestParam("account")int idAccount){
        User user = userService.findByLogin(principal.getName());
        java.util.Calendar calendar = Calendar.getInstance();
        Date date = new Date(calendar.getTime().getTime());
        Category category = categoryService.findOne(id);
        Account account = accountService.findOne(idAccount);
        category.setSum(sum + category.getSum());
        account.setBalance(account.getBalance() - sum);
        categoryService.update(category);
        accountService.update(account);
        spendingService.add(description,sum,date,category,account,user);
        return "redirect:/view/one/category/{id}";
    }

    @RequestMapping(value = "/view/spending",method = RequestMethod.GET)
    public String viewSpending(Model model,Principal principal){
        User user = userService.findByLogin(principal.getName());
        List<Spending>spendingList = spendingService.findSpendingByUser(user);
        List<Account>accountList = accountService.findAccountByUser(user);
        List<Category>categoryList = categoryService.findCategoryByUser(user);
        Collections.reverse(spendingList);
        model.addAttribute("user",user);
        model.addAttribute("spendingList",spendingList);
        model.addAttribute("accountList",accountList);
        model.addAttribute("categoryList",categoryList);
        return "viewSpending";
    }
    @RequestMapping(value = "/delete/spending/{id}",method = RequestMethod.GET)
    public String delete(@PathVariable Integer id,Principal principal){
        User user = userService.findByLogin(principal.getName());
        Spending spending = spendingService.findOne(id);
        spendingService.delete(id);
        return "redirect:/view/spending";
    }

//    @RequestMapping(value = "/delete/one/spending/{id}",method = RequestMethod.GET)
//    public String deleteOne(@PathVariable Integer id,Principal principal){
//        User user = userService.findByLogin(principal.getName());
//        Spending spending = spendingService.findOne(id);
//        spendingService.delete(id);
//        return "redirect:/view/one/category/" + spending.getId();
//    }

}
