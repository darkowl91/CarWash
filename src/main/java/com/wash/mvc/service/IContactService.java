package com.wash.mvc.service;

import com.wash.model.contact.Contact;

import java.util.List;

public interface IContactService {
	
	List<Contact> findAll();

	Contact findById(long contactId);

	Contact save(Contact contact);
}
