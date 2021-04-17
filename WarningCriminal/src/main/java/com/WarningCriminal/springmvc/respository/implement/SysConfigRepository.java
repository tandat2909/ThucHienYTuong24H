package com.WarningCriminal.springmvc.respository.implement;

import com.WarningCriminal.springmvc.pojo.Sysconfig;
import com.WarningCriminal.springmvc.respository.ISysConfigRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Repository
public class SysConfigRepository extends GenericsRepository<Sysconfig,String> implements ISysConfigRepository {
}
