package com.wash.mvc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AccountController extends BaseController {

    @RequestMapping(value = "/signIn")
    public String signIn() {
        return "carWash.signIn";
    }

    @RequestMapping(value = "/signUp")
    public String signUp() {
        return "carWash.signUp";
    }
}

