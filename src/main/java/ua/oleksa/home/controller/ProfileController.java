package ua.oleksa.home.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Admin on 15.08.2017.
 */
@Controller
public class ProfileController {

    @RequestMapping(value = "/profile/page",method = RequestMethod.GET)
    public String profilePage(){
        return "profilePage";
    }
}
