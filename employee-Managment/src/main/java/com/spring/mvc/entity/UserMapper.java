package com.spring.mvc.entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class UserMapper implements RowMapper<User> {

	@Override
	public User mapRow(ResultSet rs, int rowNum) throws SQLException {

		User user = new User();

		user.setId(rs.getInt("id"));
		user.setUserName(rs.getString("userName"));
		user.setEmail(rs.getString("Email"));
		user.setPassword(rs.getString("password"));

		return user;
	}

}
