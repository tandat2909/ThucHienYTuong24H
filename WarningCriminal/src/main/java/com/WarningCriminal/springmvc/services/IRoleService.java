package com.WarningCriminal.springmvc.services;

import com.WarningCriminal.springmvc.pojo.Role;
import com.WarningCriminal.springmvc.respository.Enum.ERole;

import java.util.List;


public interface IRoleService{
    Role getRole(ERole eRole);
    List<Role> getAll();
}
