package com.compass.compass.interceptors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class MyInterceptorConfiguration implements WebMvcConfigurer{
    @Autowired
    LoginStateInterceptor loginStateInterceptor;

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(loginStateInterceptor)
                .addPathPatterns("/markedPositions","/guessYourLike","/recommend",
                        "/myInfo","/updateMyInfo");
        //
    }
}
