package com.wash.mvc.service;

import com.wash.model.advertisement.News;

import java.util.List;

public interface INewsService {

    public List<News> findAll();

    public News save(News news);

    public void delete(Long id);

    public News findById(Long id);
}
