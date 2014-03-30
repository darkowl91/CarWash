package com.wash.mvc.service;

import com.google.common.collect.Lists;
import com.wash.model.advertisement.News;
import com.wash.repository.INewsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("INewsService")
@Transactional
public class NewsServiceImpl implements INewsService {

    @Autowired
    private INewsRepository repository;

    @Override
    public List<News> findAll() {
        return Lists.newArrayList(repository.findAll());
    }
}