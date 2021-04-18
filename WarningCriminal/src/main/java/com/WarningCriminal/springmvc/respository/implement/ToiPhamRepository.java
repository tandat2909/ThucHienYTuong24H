package com.WarningCriminal.springmvc.respository.implement;

import com.WarningCriminal.springmvc.pojo.Toipham;
import com.WarningCriminal.springmvc.respository.IToiPhamRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class ToiPhamRepository extends GenericsRepository<Toipham,String> implements IToiPhamRepository {
}
