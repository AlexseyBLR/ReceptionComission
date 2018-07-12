package com.compit.reception_comission.controller;

import com.compit.reception_comission.entity.User.UserForLogIn;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping(value = "/")
public class MainController {


    //SecondPageLink
    @RequestMapping(value = "/second", method = RequestMethod.GET)
    public String redirectSecond(ModelMap modelMap) {

        modelMap.addAttribute("user", new UserForLogIn());

        return "secondPage";
    }

    //homePageLink
    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public String redirectHome(ModelMap modelMap, @ModelAttribute("user") UserForLogIn user) {
        if(user.getUserName().equals("qqq")&&user.getPassword().equals("aaa")){
            modelMap.addAttribute("user", user);
            return "result";
        }
//        modelMap.addAttribute("user", user.getUserName() + user.getPassword());
        return "mainPage";
    }


}
