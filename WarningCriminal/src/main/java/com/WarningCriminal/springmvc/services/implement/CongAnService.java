package com.WarningCriminal.springmvc.services.implement;

import com.WarningCriminal.springmvc.pojo.CongAn;
import com.WarningCriminal.springmvc.respository.ICongAnRepository;
import com.WarningCriminal.springmvc.services.ICongAnService;
import org.springframework.beans.factory.annotation.Autowired;

public class CongAnService extends GenericsService<CongAn,String> implements ICongAnService {

    @Autowired
    ICongAnRepository congAnRepository;


}
