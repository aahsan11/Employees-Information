package com.ahsan.Employees.Dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ahsan.Employees.Model.Employees;


@Repository
public interface EmployeeDao extends JpaRepository<Employees, Integer> {

}
