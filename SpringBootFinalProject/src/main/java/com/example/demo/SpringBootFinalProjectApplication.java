package com.example.demo;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan({"sist.data.*","com.example.demo"})
@MapperScan("sist.data.mapper")
public class SpringBootFinalProjectApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringBootFinalProjectApplication.class, args);
	}

}
