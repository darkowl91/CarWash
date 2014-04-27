package com.wash.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.wash.model.account.User;

public interface IUserRepository extends JpaRepository<User, Long> {

    User findByUsername(String username);
    
    User findByEmail(String email);
}
