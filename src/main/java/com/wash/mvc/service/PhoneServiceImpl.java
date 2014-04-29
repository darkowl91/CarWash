package com.wash.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wash.model.account.Phone;
import com.wash.programm.exception.DuplicatePhoneException;
import com.wash.repository.IPhoneRepository;

@Service("IPhoneService")
@Transactional
public class PhoneServiceImpl implements IPhoneService {
	
	@Autowired
	private IPhoneRepository phoneRepository;

	@Override
	public Phone save(Phone phone) throws DuplicatePhoneException {
		if (phoneValueExist(phone.getPhoneValue())) {
			throw new DuplicatePhoneException();
		}
		
		return phoneRepository.save(phone);
	}
	
	@Override
	public void delete(Long id) {
		phoneRepository.delete(id);
	}
	
	private boolean phoneValueExist(String phoneValue) {
		Phone phone = phoneRepository.findByPhoneValue(phoneValue);
		
		if (phone != null) {
			return true;
		}
		
		return false;
	}
}
