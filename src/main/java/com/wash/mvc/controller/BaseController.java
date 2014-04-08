package com.wash.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BaseController {

	@RequestMapping(value="/", method = RequestMethod.GET)
	public final String startPage(Model model) {		
		return "carWash.welcome";
	}

    @RequestMapping(value = "/aboutUs", method = RequestMethod.GET)
    public final String aboutUs() {
        return "carWash.about";
    }
}
