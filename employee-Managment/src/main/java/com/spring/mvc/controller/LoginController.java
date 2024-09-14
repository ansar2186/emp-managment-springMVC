package com.spring.mvc.controller;

import java.util.List;
import java.util.Random;

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
	public String userSignUp(@ModelAttribute User user, Model model) {
		System.out.println(user);
		Random random = new Random();
		int id = random.nextInt(1000);
		user.setId(id);

		int status = userLoginImpl.addUser(user);
		if (status == 1) {
			model.addAttribute("msg", "User Registration Successfull Completed !");
			return "redirect:/";
		} else {
			model.addAttribute("msg", "Something went wrong please try again !");
			return "registraton";
		}

	}
	
	@RequestMapping("/logOut")
	public String logOut(HttpSession session) {
		session.invalidate();
		return "index";
	}

}
