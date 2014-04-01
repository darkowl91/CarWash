package com.wash.mvc.service;

import com.wash.model.services.ServiceRequest;

import java.util.List;

public interface IServiceRequest {

    public List<ServiceRequest> findAll();

    public ServiceRequest save(ServiceRequest serviceRequest);

    public void delete(Long id);
}
