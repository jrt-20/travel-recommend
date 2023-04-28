package com.travel.sz;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.travel.sz.mapper")
public class SzApplication {

    public static void main(String[] args) {
        SpringApplication.run(SzApplication.class, args);
    }

}
