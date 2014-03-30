package com.wash.mvc.service;

import com.wash.model.account.User;

public interface IUserService {

     User findByUsername(String username);
}
