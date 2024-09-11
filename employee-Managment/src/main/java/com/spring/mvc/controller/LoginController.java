package com.spring.mvc.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
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
	public String add(HttpSession session, Model model) {
		String userName = (String) session.getAttribute("userId");
		if (userName != null) {
			return "addEmp";
		} else {
			model.addAttribute("msg", "User Not Loged In, Please login");
			return "index";
		}

	}

	@RequestMapping("/viewEmp")
	public String view(HttpSession session, Model model) {
		String userName = (String) session.getAttribute("userId");
		if (userName != null) {
			return "viewEmp";
		} else {
			model.addAttribute("msg", "User Not loged In, Please login");
			return "viewEmp";
		}
	}

	@RequestMapping("/")
	public String indexPage() {
		return "index";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@RequestParam String userName, @RequestParam String password, Model model,
			HttpSession session) {

		User user = userLoginImpl.userLogin(userName, password);

		if (user.getUserName().equals(userName) && user.getPassword().equals(password)) {
			session.setAttribute("userId", userName);
			model.addAttribute("msg", "Login Successfull");
			return "home";
		} else {
			model.addAttribute("msg", "Invalid UserName password?");
			return "index";
		}

	}

	@RequestMapping("/register")
	public String userRegistraion() {

		return "registraton";

	}

	@RequestMapping(value = "/userSignUp", method = RequestMethod.POST)
	public String userSignUp(@ModelAttribute User user) {
		System.out.println(user);

		return "registraton";

	}

}
