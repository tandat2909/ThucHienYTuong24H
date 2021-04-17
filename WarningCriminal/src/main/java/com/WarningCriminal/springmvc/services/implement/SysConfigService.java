package com.WarningCriminal.springmvc.services.implement;

import com.WarningCriminal.springmvc.pojo.Sysconfig;
import com.WarningCriminal.springmvc.services.ISysconfigService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class SysConfigService extends GenericsService<Sysconfig,String> implements ISysconfigService {
}
