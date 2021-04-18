package com.WarningCriminal.springmvc.services.implement;

import com.WarningCriminal.springmvc.pojo.Toipham;
import com.WarningCriminal.springmvc.services.IToiPhamService;
import org.springframework.security.core.Transient;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class ToiPhamService extends GenericsService<Toipham,String> implements IToiPhamService {
}
