package com.wash.repository;

import com.wash.model.advertisement.News;
import org.springframework.data.repository.CrudRepository;

public interface INewsRepository extends CrudRepository<News, Long> {

}
