package com.YassineGroupSpringBoot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

//@ComponentScan({ "com.YassineGroupSpringBoot.AppController", "com.YassineGroupSpringBoot.services" })
//@Configuration
//@EnableAutoConfiguration
//**@ComponentScan({"com.example.demo", "controller", "service"})**
@SpringBootApplication
public class myApplication {
    public static void main(String[] args) {

        SpringApplication.run(myApplication.class,args);
    }
}
