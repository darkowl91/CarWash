package com.wash.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.wash.model.account.Authority;

public interface IAuthorityRepository extends JpaRepository<Authority, Long> {
	
	Authority findByName(String name);
}
