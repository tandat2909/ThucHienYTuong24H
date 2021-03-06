package com.WarningCriminal.springmvc.services.implement;


import com.WarningCriminal.springmvc.Annotation.GeneratedValueUUID;
import com.WarningCriminal.springmvc.respository.IGenericsRepository;
import com.WarningCriminal.springmvc.services.IGenericsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.Id;
import java.lang.reflect.Field;
import java.util.List;
import java.util.UUID;

@Service
@Transactional
public abstract class GenericsService<T, K> implements IGenericsService<T, K> {

    @Autowired
    IGenericsRepository<T, K> genericsRepository;

    @Override
    public List<T> getAll() {
        return genericsRepository.getAll();
    }

    @Override
    public void saveOrUpdate(T obj) {
        genericsRepository.saveOrUpdate(obj);
    }

    @Override
    public void remove(T obj) {
        genericsRepository.remove(obj);
    }

    @Override
    public void update(T entity) {
        genericsRepository.update(entity);
    }

    protected void setValueFieldId(T obj) throws IllegalAccessException {
        for (Field field : obj.getClass().getDeclaredFields()) {
            if (field.isAnnotationPresent(Id.class) && field.isAnnotationPresent(GeneratedValueUUID.class)) {
                if (field.getAnnotation(GeneratedValueUUID.class).status()) {
                    field.setAccessible(true);
                    field.set(obj, UUID.randomUUID().toString());
                }
                break;
            }
        }
    }

    @Override
    public void add(T obj, boolean GeneratedValueId) {
        if(GeneratedValueId) {
            try {
                setValueFieldId(obj);
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            }
        }
        genericsRepository.save(obj);
    }
    @Override
    public void add(T obj){

        genericsRepository.save(obj);
    }


    @Override
    public T getElementById(K key) {
        return genericsRepository.getElementById(key);
    }

    @Override
    public List<T> getElementsByKeyWordOnField(String kw, Field field) {
        return genericsRepository.getElementsByKeyWordOnField(kw,field);
    }
}
