package com.wash.repository;

import com.wash.model.services.Service;
import org.springframework.data.repository.CrudRepository;

public interface IServiceRepository extends CrudRepository<Service, Long> {
}