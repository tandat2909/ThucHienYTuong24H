package com.WarningCriminal.springmvc.services;

import com.WarningCriminal.springmvc.pojo.Sysconfig;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public interface ISysconfigService extends IGenericsService<Sysconfig,String> {
}
