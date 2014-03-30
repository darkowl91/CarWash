package com.wash.mvc.service;

import com.wash.model.account.User;
import com.wash.repository.IUserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("IUserService")
@Transactional
public class UserServiceImpl implements IUserService {

    @Autowired
    private IUserRepository repository;

    @Override
    public User findByUsername(String username) {
        return repository.findByUsername(username);
    }
}
