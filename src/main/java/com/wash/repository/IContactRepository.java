package com.wash.repository;

import org.springframework.data.repository.CrudRepository;

import com.wash.model.contact.Contact;

public interface IContactRepository extends CrudRepository<Contact, Long> {
}
