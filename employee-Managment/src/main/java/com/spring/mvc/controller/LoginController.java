package com.spring.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.mvc.entity.Employee;
import com.spring.mvc.entity.User;
import com.spring.mvc.service.UserLoginImpl;

@Controller
public class LoginController {

	@Autowired
	private UserLoginImpl userLoginImpl;

	@RequestMapping("/addEmp")
	public String add() {
		return "addEmp";
	}

	@RequestMapping("/viewEmp")
	public String view() {
		return "viewEmp";
	}

	@RequestMapping("/")
	public String indexPage() {
		return "index";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@RequestParam String userName, @RequestParam String password, Model model) {

		User user = userLoginImpl.userLogin(userName, password);

		if (user.getUserName().equals(userName) && user.getPassword().equals(password)) {
			model.addAttribute("msg", "Login Successfull");
			return "home";
		} else {
			model.addAttribute("msg", "Invalid UserName password?");
			return "index";
		}

	}

	
}
