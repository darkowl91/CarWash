package com.wash.mvc.service;

import com.wash.model.account.Authority;

public interface IAuthorityService {
	
	Authority findByName(String name);
}
