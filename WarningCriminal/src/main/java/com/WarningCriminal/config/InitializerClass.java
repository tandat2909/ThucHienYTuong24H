package com.WarningCriminal.config;

import com.WarningCriminal.springmvc.modelView.InforAccount;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class InitializerClass {
    @Bean
    public InforAccount inforAccount() {
        return new InforAccount();
    }


}
