package com.compit.reception_comission.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
@RequestMapping(value = "/")
public class MainController {


    //SecondPageLink
    @RequestMapping(value = "/second", method = RequestMethod.GET)
    public String redirectSecond(ModelMap modelMap){
        return "secondPage";
    }

    //homePageLink
    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public String redirectHome(ModelMap modelMap){
        return "mainPage";
    }


}
