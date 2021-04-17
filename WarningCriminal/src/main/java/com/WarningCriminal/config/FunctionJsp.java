package com.WarningCriminal.config;

import com.WarningCriminal.springmvc.services.IAccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.transaction.annotation.Transactional;

@Configuration
@Transactional
public class FunctionJsp {
    @Autowired
    static IAccountService accountService;

}
