package com.WarningCriminal.springmvc.respository.implement;

import com.WarningCriminal.springmvc.pojo.Nguoidan;
import com.WarningCriminal.springmvc.respository.INguoiDanRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class NguoiDanRepository extends GenericsRepository<Nguoidan,String> implements INguoiDanRepository {
}
