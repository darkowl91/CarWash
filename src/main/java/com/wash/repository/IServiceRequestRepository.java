package com.wash.repository;

import com.wash.model.services.ServiceRequest;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface IServiceRequestRepository extends CrudRepository<ServiceRequest, Long> {

    @Query(value = "select request from ServiceRequest request where request.isApproved=true")
    ServiceRequest findApproved();

    @Query(value = "select request from ServiceRequest request where request.isApproved=false")
    ServiceRequest findToApprove();
}
