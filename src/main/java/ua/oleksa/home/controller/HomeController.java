package ua.oleksa.home.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ua.oleksa.home.persistence.domain.Account;
import ua.oleksa.home.persistence.domain.Category;
import ua.oleksa.home.persistence.domain.Icon;
import ua.oleksa.home.persistence.domain.User;
import ua.oleksa.home.persistence.service.AccountService;
import ua.oleksa.home.persistence.service.CategoryService;
import ua.oleksa.home.persistence.service.IconService;
import ua.oleksa.home.persistence.service.UserService;

import java.security.Principal;
import java.util.List;

/**
 * Created by Admin on 05.08.2017.
 */
@Controller
public class HomeController {

    @Autowired
    UserService userService;

    @Autowired
    AccountService accountService;

    @Autowired
    CategoryService categoryService;

    @Autowired
    IconService iconService;

    @RequestMapping(value = "/",method = RequestMethod.GET)
    public String home(Model model, Principal principal){
        User user = userService.findByLogin(principal.getName());
        List<Account>accountList = accountService.findAccountByUser(user);
        List<Category> categoryList = categoryService.findCategoryByUser(user);
        List<Icon>iconList = iconService.findAll();
        model.addAttribute("user",user);
        model.addAttribute("categoryList",categoryList);
        model.addAttribute("accountList",accountList);
        model.addAttribute("iconList",iconList);
        return "home";
    }
}
