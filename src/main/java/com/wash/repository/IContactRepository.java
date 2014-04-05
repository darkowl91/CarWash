package com.wash.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.wash.model.contact.Contact;

public interface IContactRepository extends JpaRepository<Contact, Long> {
}
