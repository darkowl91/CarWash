package com.wash.mvc.controller.converter;

import org.springframework.core.convert.converter.Converter;

import com.wash.model.account.User;
import com.wash.model.registration.RegistrationForm;

public class UserConverter implements Converter<RegistrationForm, User> {

	@Override
	public User convert(RegistrationForm registrationForm) {
		User user = new User();		
		user.setUsername(registrationForm.getUsername());
		user.setPassword(registrationForm.getPassword());
		user.setEmail(registrationForm.getEmail());
		user.setFirstName(registrationForm.getFirstName());
		user.setLastName(registrationForm.getLastName());
		user.setEnabled(true);

		return user;
	}
}
