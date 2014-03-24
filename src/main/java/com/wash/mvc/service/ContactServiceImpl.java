package com.wash.mvc.service;

import com.google.common.collect.Lists;
import com.wash.model.contact.Contact;
import com.wash.repository.IContactRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("IContactService")
@Transactional
public class ContactServiceImpl implements IContactService {
	
	@Autowired
	private IContactRepository contactRepository;

	@Transactional(readOnly = true)
	public List<Contact> findAll() {
		return Lists.newArrayList(contactRepository.findAll());
	}

	@Transactional(readOnly = true)
	public Contact findById(long contactId) {
		return contactRepository.findOne(contactId);
	}

	public Contact save(Contact contact) {
		return contactRepository.save(contact);
	}
}
