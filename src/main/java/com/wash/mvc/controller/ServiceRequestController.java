package com.wash.mvc.controller;

import com.wash.mvc.service.IServiceRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ServiceRequestController {

    @Autowired
    private IServiceRequest service;


    @RequestMapping(value = "/manageServiceRequestList", method = RequestMethod.GET)
    public String viewServiceRequestList(ModelMap model) {
        model.put("SERVICE_REQUEST",service.findAll());
        return "carWash.admin.serviceRequest";
    }
}
