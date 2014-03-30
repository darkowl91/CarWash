package com.wash.repository;

import com.wash.model.account.User;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface IUserRepository extends CrudRepository<User, Long> {

    @Query(value = "select u from com.wash.model.account.User u where u.username=:username")
    User findByUsername(@Param("username") String username);
}
