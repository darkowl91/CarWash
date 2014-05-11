package com.wash.mvc.service;

import com.wash.model.services.ServiceRequest;

import java.util.List;

public interface IServiceRequest {

    public ServiceRequest findById(Long id);

    public List<ServiceRequest> findAll();

    public List<ServiceRequest> findApproved();

    public List<ServiceRequest> findToApprove();

    public ServiceRequest save(ServiceRequest serviceRequest);
    
    public List<ServiceRequest> findByUsername(String username);

    public void delete(Long id);
}
