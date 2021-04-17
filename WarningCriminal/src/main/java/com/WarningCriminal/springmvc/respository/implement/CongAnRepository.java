package com.WarningCriminal.springmvc.respository.implement;

import com.WarningCriminal.springmvc.pojo.CongAn;

import com.WarningCriminal.springmvc.respository.ICongAnRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


@Repository
@Transactional
public class CongAnRepository extends GenericsRepository<CongAn,String> implements ICongAnRepository {

    @Override
    public CongAn getCustomerByUserName(String userName) {
        return null;
    }

    @Override
    public CongAn getCustomerByAccountId(String accountId) {
        return null;
    }
}
