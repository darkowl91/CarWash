package com.wash.mvc.controller;

import com.wash.model.services.ServiceRequest;
import com.wash.mvc.service.IService;
import com.wash.mvc.service.IServiceRequest;
import com.wash.mvc.service.IUserService;
import com.wash.programm.util.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.security.Principal;

@Controller
public class ServiceRequestController {

    @Autowired
    private IServiceRequest serviceRequest;
    @Autowired
    private IService service;
    @Autowired
    private IUserService userService;

    @RequestMapping(value = "/manageServiceRequestList", method = RequestMethod.GET)
    public String viewServiceRequestList(ModelMap model) {
        model.put("SERVICE_REQUEST",serviceRequest.findAll());
        return "carWash.admin.serviceRequest";
    }

    @RequestMapping(value = "/newServiceRequest", method = RequestMethod.GET)
    @ResponseBody
    public String newServiceRequest(Long id, Principal principal) {
        ServiceRequest newServiceRequest = new ServiceRequest();
        newServiceRequest.setService(service.findById(id));
        newServiceRequest.setDate(DateUtil.getDateTimeNow());
        newServiceRequest.setUser(userService.findByUsername(principal.getName()));
        if (serviceRequest.save(newServiceRequest) != null) {
            return "alert-success";
        } else {
            return "alert-error";
        }
    }

    @RequestMapping(value = "/removeServiceRequest", method = RequestMethod.GET)
    public String removeServiceRequest(Long id) {
        serviceRequest.delete(id);
        return "redirect:/manageServiceRequestList";
    }
}
