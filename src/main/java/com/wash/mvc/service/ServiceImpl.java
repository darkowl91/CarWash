package com.wash.mvc.service;


import com.google.common.collect.Lists;
import com.wash.repository.IServiceRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("IService")
@Transactional
public class ServiceImpl implements IService {

    @Autowired
    private IServiceRepository repository;

    @Override
    public List<com.wash.model.services.Service> findAll() {
        return Lists.newArrayList(repository.findAll());
    }

    @Override
    public com.wash.model.services.Service save(com.wash.model.services.Service service) {
       return repository.save(service);
    }

    @Override
    public void delete(Long id) {
        repository.delete(id);
    }
}
