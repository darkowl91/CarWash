package com.wash.mvc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BaseController {

    @RequestMapping(method = RequestMethod.GET, value = "/")
    public String startPage() {
        return "carWash.adverts";
    }
}
