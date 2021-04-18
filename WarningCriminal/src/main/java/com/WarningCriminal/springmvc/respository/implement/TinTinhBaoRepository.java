package com.WarningCriminal.springmvc.respository.implement;

import com.WarningCriminal.springmvc.pojo.Tintinhbao;
import com.WarningCriminal.springmvc.respository.ITinTinhBaoRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class TinTinhBaoRepository extends GenericsRepository<Tintinhbao,String> implements ITinTinhBaoRepository {
}
