package com.wash.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AboutController {

    @RequestMapping(value = "/aboutUs", method = RequestMethod.GET)
    public final String aboutUs() {
        return "carWash.about";
    }
}
