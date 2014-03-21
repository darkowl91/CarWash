package com.wash.mvc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public abstract class BaseController {

	@RequestMapping(value="/", method = RequestMethod.GET)
	public final String startPage() {
		return "carWash.welcome";
	}
}
