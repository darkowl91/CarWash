package com.wash.mvc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
public class AccountController {

    @RequestMapping(value = "/signIn", method = RequestMethod.GET)
    public String signIn(@RequestParam Map<String, String> allRequestParams, Model model) {

        String signInError = allRequestParams.get("signInError");
        if (signInError != null) {
            model.addAttribute("signInError", "true");
        }

        return "carWash.signIn";
    }

    @RequestMapping(value = "/signUp", method = RequestMethod.GET)
    public String signUp() {
        return "carWash.signUp";
    }
}

