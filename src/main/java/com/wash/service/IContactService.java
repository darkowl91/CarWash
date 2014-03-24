package com.wash.service;

import java.util.List;

import com.wash.model.contact.Contact;

public interface IContactService {
	
	List<Contact> findAll();

	Contact findById(long contactId);

	Contact save(Contact contact);
}
