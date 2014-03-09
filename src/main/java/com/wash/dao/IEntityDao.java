package com.wash.dao;

import com.wash.model.BaseEntity;

import java.util.List;
import java.util.Map;

public interface IEntityDao<T extends BaseEntity> {

    List<T> getAll();

    T getById(Long id);

    void saveUpdate(T baseEntity);

    void save(T baseEntity);

    void remove(T baseEntity);

    public List<T> getByNamedQuery(String queryText, Map<String, Object> parameters);

    public List<T> getByNamedQuery(String queryText, Object... parameters);

    public long getCount();
}
