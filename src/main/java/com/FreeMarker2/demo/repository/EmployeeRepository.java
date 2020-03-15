package com.FreeMarker2.demo.repository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import  com.FreeMarker2.demo.model.Employee;

public interface EmployeeRepository extends JpaRepository<Employee, Long>{

}
