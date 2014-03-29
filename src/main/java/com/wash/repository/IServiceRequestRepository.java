package com.wash.repository;

import com.wash.model.services.ServiceRequest;
import org.springframework.data.repository.CrudRepository;

public interface IServiceRequestRepository extends CrudRepository<ServiceRequest, Long> {

}
