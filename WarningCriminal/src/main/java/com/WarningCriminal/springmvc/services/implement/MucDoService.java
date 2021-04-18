package com.WarningCriminal.springmvc.services.implement;

import com.WarningCriminal.springmvc.pojo.Mucdo;
import com.WarningCriminal.springmvc.services.IMucDoService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class MucDoService extends GenericsService<Mucdo,String> implements IMucDoService {
}
