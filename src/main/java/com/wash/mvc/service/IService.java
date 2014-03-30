package com.wash.mvc.service;


import com.wash.model.services.Service;

import java.util.List;

public interface IService {

    List<Service> findAll();

    Service save(Service service);

    void delete(Long id);

    Service findById(Long id);


}
