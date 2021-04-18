package com.WarningCriminal.springmvc.respository.implement;

import com.WarningCriminal.springmvc.pojo.Mucdo;
import com.WarningCriminal.springmvc.respository.IMucDoRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class MucDoRepository extends GenericsRepository<Mucdo,String> implements IMucDoRepository {
}
