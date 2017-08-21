package ua.oleksa.home.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import ua.oleksa.home.persistence.domain.*;
import ua.oleksa.home.persistence.service.*;

import java.security.Principal;
import java.sql.Date;
import java.util.Calendar;
import java.util.Collections;
import java.util.List;

/**
 * Created by Admin on 07.08.2017.
 */
@Controller
public class CategoryController {

    @Autowired
    CategoryService categoryService;

    @Autowired
    UserService userService;

    @Autowired
    SpendingService spendingService;

    @Autowired
    AccountService accountService;

    @RequestMapping(value = "/category/page",method = RequestMethod.GET)
    public String categoryPage(Model model, Principal principal){
        User user = userService.findByLogin(principal.getName());
        model.addAttribute("user",user);
        return "addCategory";
    }

    @RequestMapping(value = "/add/category",method = RequestMethod.POST)
    @ResponseBody
    public String addCategory(@RequestBody String array[],Principal principal){
        User user = userService.findByLogin(principal.getName());
        java.util.Calendar calendar = Calendar.getInstance();
        Date date = new Date(calendar.getTime().getTime());
        Category category = new Category(array[0],array[1],date,user);
        categoryService.add(category);
        return "redirect:/category/page";
    }

    @RequestMapping(value = "/view/category",method = RequestMethod.GET)
    public String viewCategory(Model model,Principal principal){
        User user = userService.findByLogin(principal.getName());
        List<Category>categoryList = categoryService.findCategoryByUser(user);
        model.addAttribute("categoryList",categoryList);
        model.addAttribute("user",user);
        return "viewCategory";
    }
    @RequestMapping(value = "/view/one/category/{id}",method = RequestMethod.GET)
    public String category1(@PathVariable Integer id, Model model, Principal principal){
        User user = userService.findByLogin(principal.getName());
        Category category = categoryService.findOne(id);
        List<Spending>spendingList = spendingService.findSpendingByCategory(category);
        List<Account>accountList = accountService.findAccountByUser(user);
        Collections.reverse(spendingList);
        model.addAttribute("user",user);
        model.addAttribute("category",category);
        model.addAttribute("spendingList",spendingList);
        model.addAttribute("accountList",accountList);
        return "viewOneCategory";
    }
    @RequestMapping(value = "/delete/category/{id}",method = RequestMethod.GET)
    public String delete(@PathVariable Integer id,Principal principal){
        User user = userService.findByLogin(principal.getName());
        Category category = categoryService.findOne(id);
        categoryService.delete(id);
        return "redirect:/view/category";
    }
}
