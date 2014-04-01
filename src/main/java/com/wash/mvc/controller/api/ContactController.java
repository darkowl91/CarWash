package com.wash.mvc.controller.api;

import com.wash.model.contact.Contact;
import com.wash.mvc.service.IContactService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("api/contact")
public class ContactController {
	
	@Autowired
	private IContactService contactService;
	
	@RequestMapping(method = RequestMethod.POST)
	@ResponseBody
    public String create(Contact contact) {		
		contactService.save(contact);		
		return "Saved contact id: " + contact.getId();
	}

    @RequestMapping(value = "/viewContacts", method = RequestMethod.GET)
    public String viewContact() {
        return "carWash.contact";
    }

    @RequestMapping(value = "/manageContact", method = RequestMethod.GET)
    public String manageContact() {
        return "carWash.admin.contacts";
    }
}