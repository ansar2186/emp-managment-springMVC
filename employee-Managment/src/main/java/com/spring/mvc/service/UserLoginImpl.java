package com.spring.mvc.service;

import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import com.spring.mvc.entity.Employee;
import com.spring.mvc.entity.EmployeeMapper;
import com.spring.mvc.entity.User;
import com.spring.mvc.entity.UserMapper;

public class UserLoginImpl {

	JdbcTemplate jdbcTemplate;

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	public User userLogin(String userName, String password) {
		// String query = "select * from registraton where userName=?";
		String query = "select * from registraton where userName='" + userName + "'";
		/*
		 * User user = jdbcTemplate.queryForObject(query, new Object[]{userName}, new
		 * BeanPropertyRowMapper<User>(User.class));
		 */
		User userObj = null;

		List<User> userList = jdbcTemplate.query(query, new UserMapper());
		System.out.println("Size----" + userList.size());

		if (userList.size() > 0) {
			userObj = new User();

			for (User user : userList) {
				userObj.setUserName(user.getUserName());
				userObj.setEmail(user.getEmail());
				userObj.setPassword(user.getPassword());
			}
			return userObj;
		}
		return userObj;
	}

	// add Employee method
	public int addEmployee(Employee employee) {
		String saveQuery = "insert into tbl_employee values('" + employee.getId() + "','" + employee.getFirstName()
				+ "','" + employee.getLastName() + "','" + employee.getEmail() + "','" + employee.getPhone() + "','"
				+ employee.getAge() + "','" + employee.getEmpProfile() + "','" + employee.getEmpCompany() + "','"
				+ employee.getEmpAddress() + "','" + employee.getEmpExperince() + "','" + employee.getEmpId() + "','"
				+ employee.getEmpSalary() + "','" + employee.getGender() + "')";
		int update = jdbcTemplate.update(saveQuery);
		return update;
	}

	public List<Employee> getAllEmployee() {
		String query = "select * from tbl_employee";

		return jdbcTemplate.query(query, new EmployeeMapper());
	}

	public Employee getEmployeeById(int id) {
		String query = "select * from tbl_employee where id =?";
		return jdbcTemplate.queryForObject(query, new Object[] { id },
				new BeanPropertyRowMapper<Employee>(Employee.class));

	}

	public int updateEmployee(Employee employee) {
		String updateQuery = "update tbl_employee set firstName='" + employee.getFirstName() + "',lastName='"
				+ employee.getLastName() + "',email='" + employee.getEmail() + "',phone='" + employee.getPhone()
				+ "',age='" + employee.getAge() + "',empProfile='" + employee.getEmpProfile() + "',empCompany='"
				+ employee.getEmpCompany() + "',empAddress='" + employee.getEmpAddress() + "',empExperince='"
				+ employee.getEmpExperince() + "',empId='" + employee.getEmpId() + "',empSalary='"
				+ employee.getEmpSalary() + "',gender='" + employee.getGender() + "' where id=" + employee.getId() + "";

		return jdbcTemplate.update(updateQuery);

	}

	public int deleteEmployee(int id) {
		String deleteQuery = "delete from tbl_employee where id="+id+"";

		return jdbcTemplate.update(deleteQuery);

	}
	
	//addUser(User user)

}
