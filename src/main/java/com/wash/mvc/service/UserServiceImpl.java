package com.wash.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wash.model.account.User;
import com.wash.programm.exception.DuplicateEmailException;
import com.wash.programm.exception.DuplicateUsernameException;
import com.wash.repository.IUserRepository;

@Service
@Transactional
public class UserServiceImpl implements IUserService {

	@Autowired
	private IUserRepository userRepository;

	@Transactional(readOnly = true)
	public User findByUsername(String username) {
		return userRepository.findByUsername(username);
	}

	public User register(User user) throws DuplicateEmailException,
			DuplicateUsernameException {
		if (usernameExist(user.getUsername())) {
			throw new DuplicateUsernameException();
		}

		if (emailExist(user.getEmail())) {
			throw new DuplicateEmailException();
		}

		return userRepository.save(user);
	}

	private boolean emailExist(String email) {
		User user = userRepository.findByEmail(email);

		if (user != null) {
			return true;
		}

		return false;
	}

	private boolean usernameExist(String username) {
		User user = userRepository.findByUsername(username);

		if (user != null) {
			return true;
		}

		return false;
	}
}
