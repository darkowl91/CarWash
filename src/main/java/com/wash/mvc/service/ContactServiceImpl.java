package com.wash.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.google.common.collect.Lists;
import com.wash.model.contact.Contact;
import com.wash.repository.IContactRepository;

@Service("IContactService")
@Transactional
public class ContactServiceImpl implements IContactService {
	
	private static final int PAGE_SIZE = 10;
	
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
	
	@Transactional(readOnly = true)
	public Page<Contact> findAll(int pageNumber) {		
		PageRequest request =
	            new PageRequest(pageNumber - 1, PAGE_SIZE, Sort.Direction.DESC, "date");
		return contactRepository.findAll(request);
	}
}
