package ua.oleksa.home.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Admin on 06.09.2017.
 */
@Controller
public class Calendar {

    @RequestMapping(value = "/calendar",method = RequestMethod.GET)
    public String calendar(){
        return "Calendar";
    }
}
