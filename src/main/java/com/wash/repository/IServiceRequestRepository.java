package com.wash.repository;

import com.wash.model.services.ServiceRequest;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface IServiceRequestRepository extends CrudRepository<ServiceRequest, Long> {

    @Query(value = "select request from ServiceRequest request where request.isApproved=true")
    List<ServiceRequest> findApproved();

    @Query(value = "select request from ServiceRequest request where request.isApproved=false")
    List<ServiceRequest> findToApprove();
    
    @Query(value = "select request from ServiceRequest request join request.user user where user.username=:username")
    List<ServiceRequest> findByUsername(@Param("username") String username);
}
