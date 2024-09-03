package com.spring.mvc.service;

import com.spring.mvc.entity.User;

public interface UserLoginService {
	
	public User userLogin(String userName, String password);

}
