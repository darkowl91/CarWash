package com.wash.mvc.controller;

import java.security.Principal;
import java.util.Collections;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.wash.model.account.User;
import com.wash.model.services.ServiceRequest;
import com.wash.mvc.service.IService;
import com.wash.mvc.service.IServiceRequest;
import com.wash.mvc.service.IUserService;

@Controller
public class ServiceRequestController {

    @Autowired
    private IServiceRequest serviceRequest;
    @Autowired
    private IService service;
    @Autowired
    private IUserService userService;

    @RequestMapping(value = "/manageServiceRequestList", method = RequestMethod.GET)
    public String viewServiceRequestList(ModelMap model, String filterId) {
        switch (filterId) {
            case "all":
                model.put("SERVICE_REQUEST", serviceRequest.findAll());
                break;
            case "toApprove":
                model.put("SERVICE_REQUEST", serviceRequest.findToApprove());
                break;
            case "approved":
                model.put("SERVICE_REQUEST", serviceRequest.findApproved());
                break;
            default:
                model.put("SERVICE_REQUEST", Collections.emptyList());
                break;
        }
        model.put("filterId", filterId);
        return "carWash.admin.serviceRequest";
    }

    @RequestMapping(value = "/newServiceRequest", method = RequestMethod.GET)
    @ResponseBody
    public String newServiceRequest(Long id, Principal principal) {
        ServiceRequest newServiceRequest = new ServiceRequest();
        newServiceRequest.setService(service.findById(id));
        newServiceRequest.setUser(userService.findByUsername(principal.getName()));
        if (serviceRequest.save(newServiceRequest) != null) {
            return "alert-success";
        } else {
            return "alert-error";
        }
    }

    @RequestMapping(value = "/removeServiceRequest", method = RequestMethod.GET)
    public String removeServiceRequest(Long id, String filterId) {
        serviceRequest.delete(id);
        return "redirect:/manageServiceRequestList?filterId="+filterId;
    }

    @RequestMapping(value = "/approveServiceRequest", method = RequestMethod.GET)
    public String approveServiceRequest(Long id) {
        ServiceRequest request = serviceRequest.findById(id);
        request.setApproved(true);
        serviceRequest.save(request);
        return "redirect:/manageServiceRequestList?filterId=toApprove";
    }
    
    @RequestMapping(value = "/removeSelfServiceRequest", method = RequestMethod.GET)
    public String removeSelfServiceRequest(Long id) {
        serviceRequest.delete(id);
        return "redirect:/selfServiceRequests";
    }
    
    @RequestMapping(value = "/selfServiceRequests", method = RequestMethod.GET)
    public String viewSelfServiceRequests(Model model, Principal principal) {
        model.addAttribute("requests", serviceRequest.findByUsername(principal.getName()));
        return "carWash.selfServiceRequests";
    }
}
