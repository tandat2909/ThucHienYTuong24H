package com.WarningCriminal.config;

import com.WarningCriminal.springmvc.modelView.InforAccount;
import com.WarningCriminal.springmvc.pojo.Account;

import com.WarningCriminal.springmvc.respository.Enum.ERole;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.UUID;

@Configuration
public class InitializerClass {
    @Bean
    public InforAccount inforAccount() {
        return new InforAccount();
    }


}
