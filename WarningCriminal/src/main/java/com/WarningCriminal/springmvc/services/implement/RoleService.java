package com.WarningCriminal.springmvc.services.implement;

import com.WarningCriminal.springmvc.pojo.Role;
import com.WarningCriminal.springmvc.respository.Enum.ERole;
import com.WarningCriminal.springmvc.respository.IRoleRepository;
import com.WarningCriminal.springmvc.services.IRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service
@Transactional
public class RoleService implements IRoleService {
    @Autowired
    IRoleRepository roleRepository;

    @Override
    public Role getRole(ERole eRole){
        return roleRepository.getRoleByEnum(eRole);
    }
    @Override
    public List<Role> getAll() {
        return roleRepository.getAll();
    }

}
