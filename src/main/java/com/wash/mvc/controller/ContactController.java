package com.wash.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.wash.model.contact.Contact;
import com.wash.mvc.service.IContactService;

@Controller
public class ContactController {
	
	@Autowired
	private IContactService contactService;
	
	@RequestMapping(value = "/manageContact/{pageNumber}", method = RequestMethod.GET)
    public String manageContact(@PathVariable int pageNumber, Model model) {
		Page<Contact> page = contactService.findAll(pageNumber);
		
		int current = page.getNumber() + 1;
	    int begin = Math.max(1, current - 5);
	    int end = Math.min(begin + 10, page.getTotalPages());

	    model.addAttribute("page", page);
	    model.addAttribute("beginIndex", begin);
	    model.addAttribute("endIndex", end);
	    model.addAttribute("currentIndex", current);
		
        return "carWash.admin.contacts";
    }
}