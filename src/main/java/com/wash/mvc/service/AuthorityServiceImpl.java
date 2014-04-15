package com.wash.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wash.model.account.Authority;
import com.wash.repository.IAuthorityRepository;

@Service
@Transactional
public class AuthorityServiceImpl implements IAuthorityService {
	
	@Autowired
	private IAuthorityRepository authorityRepository;

	@Transactional(readOnly = true)
	public Authority findByName(String name) {
		return authorityRepository.findByName(name);
	}

}
