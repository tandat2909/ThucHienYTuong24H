package com.WarningCriminal.springmvc.services;

import java.lang.reflect.Field;
import java.util.List;

public interface IGenericsService<T, K> {

    List<T> getAll();

    void saveOrUpdate(T obj);

    void remove(T obj);

    void update(T entity);

    /**
     *
     *  Muốn tự động tạo field ID type UUID set value GeneratedValueId = true và field có gắn annotation @GeneratedValueUUID
     *  <br>
     *  Khi đối tượng tạo mới đã gán id thì set value GeneratedValueId = False
     */
    void add(T obj, boolean GeneratedValueId);
    void add(T obj);

    T getElementById(K key);
    List<T> getElementsByKeyWordOnField(String kw, Field field);
}
