package com.customer;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@EnableJpaRepositories("com.customer.repository")
public class SpringBootCrudApplication{
	
	public static void main(String[] args){
		SpringApplication.run(SpringBootCrudApplication.class,args);
	}
}
