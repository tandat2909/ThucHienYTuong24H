package com.WarningCriminal.config;



import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;


@Configuration
@EnableWebMvc
@EnableTransactionManagement
@ComponentScan(basePackages = {"com.WarningCriminal.springmvc"})
public class WebApplicationContextConfig implements WebMvcConfigurer {
    @Override
    public void configureDefaultServletHandling(
            DefaultServletHandlerConfigurer configurer) {
        configurer.enable();
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {

        registry.addResourceHandler("/TrangChu/**").addResourceLocations("/resource/TrangChu");
        //login
        registry.addResourceHandler("/login/**")
                .addResourceLocations("/resources/admin/");

//        Trang chu
        registry.addResourceHandler("/css/**")
                .addResourceLocations("/resources/TrangChu/css/");
        registry.addResourceHandler("/img/**")
                .addResourceLocations("/resources/TrangChu/img/");
        registry.addResourceHandler("/fonts/**")
                .addResourceLocations("/resources/TrangChu/fonts/");

        registry.addResourceHandler("/TrangChu/**").addResourceLocations("/resources/TrangChu/");
        registry.addResourceHandler("/pages/**").addResourceLocations("/WEB-INF/pages/");
        //admin
        registry.addResourceHandler("/admin/**").addResourceLocations("/resources/admin/");

//        registry.addResourceHandler("/admin/css/**")
//                .addResourceLocations("/resources/admin/css/");
//        registry.addResourceHandler("/admin/fonts/**")
//                .addResourceLocations("/resources/admin/fonts/");
//        registry.addResourceHandler("/admin/images/**")
//                .addResourceLocations("/resources/admin/images/");
//        registry.addResourceHandler("/admin/js/**")
//                .addResourceLocations("/resources/admin/js/");

    }



    //Chỉ định đọc các tập tin properties
    @Bean
    public MessageSource messageSource() {
        ResourceBundleMessageSource resource = new ResourceBundleMessageSource();
        resource.setBasename("messages");

        return resource;
    }
//    @Bean
//    public LocalValidatorFactoryBean getvalidator() {
//        LocalValidatorFactoryBean bean
//                = new LocalValidatorFactoryBean();
//        bean.setValidationMessageSource(messageSource());
//        return bean;
//    }
//
//




}
