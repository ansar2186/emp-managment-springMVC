package com.spring.mvc.service;

import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

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

}
