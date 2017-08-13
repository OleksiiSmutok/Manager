package ua.oleksa.home.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import ua.oleksa.home.persistence.domain.Category;
import ua.oleksa.home.persistence.domain.Icon;
import ua.oleksa.home.persistence.domain.Spending;
import ua.oleksa.home.persistence.domain.User;
import ua.oleksa.home.persistence.service.CategoryService;
import ua.oleksa.home.persistence.service.IconService;
import ua.oleksa.home.persistence.service.SpendingService;
import ua.oleksa.home.persistence.service.UserService;

import java.security.Principal;
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
    IconService iconService;

    @RequestMapping(value = "/category/page",method = RequestMethod.GET)
    public String categoryPage(Model model, Principal principal){
        User user = userService.findByLogin(principal.getName());
        List<Icon>iconList = iconService.findAll();
        model.addAttribute("iconList",iconList);
        model.addAttribute("user",user);
        return "addCategory";
    }

    @RequestMapping(value = "/add/category",method = RequestMethod.POST)
    public String addCategory(Principal principal,
                              @RequestParam("categoryName")String name,
                              @RequestParam("icon")int id){
        User user = userService.findByLogin(principal.getName());
        Icon icon = iconService.findOne(id);
        categoryService.add(name,user,icon);
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
        model.addAttribute("user",user);
        model.addAttribute("category",category);
        model.addAttribute("spendingList",spendingList);
        return "viewOneCategory";
    }
}
