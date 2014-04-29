package com.wash.mvc.service;

import com.wash.model.account.Phone;
import com.wash.programm.exception.DuplicatePhoneException;

public interface IPhoneService {

	Phone save(Phone phone) throws DuplicatePhoneException;
	
	void delete(Long id);
}
