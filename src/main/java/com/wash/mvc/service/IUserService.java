package com.wash.mvc.service;

import com.wash.model.account.User;
import com.wash.programm.exception.DuplicateEmailException;
import com.wash.programm.exception.DuplicateUsernameException;

public interface IUserService {

     User findByUsername(String username);
     
     User register(User user) throws DuplicateEmailException, DuplicateUsernameException;
     
     User update(User user);
}
