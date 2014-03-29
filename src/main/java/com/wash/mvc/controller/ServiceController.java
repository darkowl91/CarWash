package com.wash.mvc.controller;

import com.wash.mvc.service.IService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ServiceController {


    @Autowired
    private IService service;

    @RequestMapping(value = "/viewServiceList", method = RequestMethod.GET)
    public String viewServiceList(ModelMap model) {
        model.put("SERVICES", service.findAll());
        return "carWash.pricing";
    }

    @RequestMapping(value = "/manageServices", method = RequestMethod.GET)
    public String manageServices(ModelMap model) {
        model.put("SERVICES", service.findAll());
        return "carWash.admin.service";
    }

}
