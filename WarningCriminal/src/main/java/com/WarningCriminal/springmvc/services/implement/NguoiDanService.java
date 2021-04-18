package com.WarningCriminal.springmvc.services.implement;

import com.WarningCriminal.springmvc.pojo.Nguoidan;
import com.WarningCriminal.springmvc.services.INguoiDanService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class NguoiDanService extends GenericsService<Nguoidan,String> implements INguoiDanService {
}
