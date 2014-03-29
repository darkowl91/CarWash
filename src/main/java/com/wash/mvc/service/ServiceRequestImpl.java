package com.wash.mvc.service;

import com.google.common.collect.Lists;
import com.wash.model.services.ServiceRequest;
import com.wash.repository.IServiceRequestRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service("IServiceRequest")
@Transactional
public class ServiceRequestImpl implements IServiceRequest {

    @Autowired
    private IServiceRequestRepository  repository;

    @Override
    public List<ServiceRequest> findAll() {
        return Lists.newArrayList(repository.findAll());
    }
}
