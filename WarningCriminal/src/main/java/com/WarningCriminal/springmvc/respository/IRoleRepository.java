package com.WarningCriminal.springmvc.respository;

import com.WarningCriminal.springmvc.pojo.Role;
import com.WarningCriminal.springmvc.respository.Enum.ERole;

public interface IRoleRepository extends IGenericsRepository<Role,String> {

    Role getRoleByEnum(ERole eRole);

}
