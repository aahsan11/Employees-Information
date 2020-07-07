package com.ahsan.Employees;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.filter.HiddenHttpMethodFilter;


@SpringBootApplication
public class EmployeesInformationApplication {

	public static void main(String[] args) {
		SpringApplication.run(EmployeesInformationApplication.class, args);
	}
	
	@Bean
    HiddenHttpMethodFilter hiddenHttpMethodFilter1() {
        return new HiddenHttpMethodFilter();
    }

}
