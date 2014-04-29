package com.wash.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.wash.model.account.Phone;

public interface IPhoneRepository extends JpaRepository<Phone, Long> {
	
	Phone findByPhoneValue(String phoneValue);
}
