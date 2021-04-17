package com.WarningCriminal.springmvc.respository.implement;

import com.WarningCriminal.springmvc.pojo.Role;
import com.WarningCriminal.springmvc.respository.Enum.ERole;
import com.WarningCriminal.springmvc.respository.IRoleRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class RoleRepository extends GenericsRepository<Role, String> implements IRoleRepository {

    @Override
    public Role getRoleByEnum(ERole eRole) {
        try {
            return getElementById(eRole.name());
        } catch (NullPointerException exception) {
            throw new NullPointerException("getRoleByEnum Error: eRole is null");
        }
    }
}
