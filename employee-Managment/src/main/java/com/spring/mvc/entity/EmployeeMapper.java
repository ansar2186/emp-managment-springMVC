package com.spring.mvc.entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class EmployeeMapper implements RowMapper<Employee> {

	@Override
	public Employee mapRow(ResultSet rs, int rowNum) throws SQLException {

		Employee employee = new Employee();
		employee.setId(rs.getInt("id"));
		employee.setFirstName(rs.getString("firstName"));
		employee.setLastName(rs.getString("lastName"));
		employee.setEmail(rs.getString("email"));
		employee.setPhone(rs.getString("phone"));
		employee.setAge(rs.getString("age"));
		employee.setEmpProfile(rs.getString("empProfile"));
		employee.setEmpCompany(rs.getString("empCompany"));
		employee.setEmpAddress(rs.getString("empAddress"));
		employee.setEmpExperince(rs.getString("empExperince"));
		employee.setEmpId(rs.getString("empId"));
		employee.setEmpSalary(rs.getString("empSalary"));
		employee.setGender(rs.getString("gender"));

		return employee;
	}

}
