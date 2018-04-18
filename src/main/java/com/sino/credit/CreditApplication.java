package com.sino.credit;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.sino.credit.mapper")
public class CreditApplication {
	public static void main(String[] args) {
		SpringApplication.run(CreditApplication.class, args);
	}
}
