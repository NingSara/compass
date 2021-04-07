package com.compass.compass;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
@EnableScheduling
public class CompassApplication {

    public static void main(String[] args) {
        ApplicationContext ioc = SpringApplication.run(CompassApplication.class, args);
//        for (String name:ioc.getBeanDefinitionNames()){
//            System.out.println(name);
//        }
    }

}
