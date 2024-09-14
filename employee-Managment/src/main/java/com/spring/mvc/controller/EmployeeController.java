package com.spring.mvc.controller;

import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpSession;
import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.mvc.entity.Employee;
import com.spring.mvc.service.UserLoginImpl;

@Controller
public class EmployeeController {

	// add employee method

	@Autowired
	private UserLoginImpl userLoginImpl;

	@RequestMapping(value = "/addEmployee", method = RequestMethod.POST)
	public String addEmployee(@RequestParam String firstName, @RequestParam String lastName, @RequestParam String email,
			@RequestParam String phone, @RequestParam String age, @RequestParam String empProfile,
			@RequestParam String company, @RequestParam String empAddress, @RequestParam String empExperince,
			@RequestParam String empSalary, @RequestParam String gender, Model model, HttpSession session) {

		String userName = (String) session.getAttribute("userId");
		System.out.println("Session User Name--" + userName);
		if (userName != null) {
			Random random = new Random();
			// random Id generated
			int id = random.nextInt(1000);
			// random EmpoyeeId generated
			String empId = String.valueOf(random.nextInt());

			Employee employee = new Employee(id, firstName, lastName, email, phone, age, empProfile, company,
					empAddress, empExperince, empId, empSalary, gender);
			int status = userLoginImpl.addEmployee(employee);

			if (status == 1) {

				return "redirect:/viewsEmp";

			} else {
				model.addAttribute("msg", "Employee record not Saved , Please try agin !!");
			}

			return "addEmp";
		} else {
			model.addAttribute("msg", "User Not Loged In, Please login");
			return "index";
		}

	}

	@RequestMapping("/viewsEmp")
	public String showEmployeeData(Model model, HttpSession session) {

		String userName = (String) session.getAttribute("userId");
		System.out.println("session user Name---" +userName);
		if (userName != null) {
			List<Employee> list = userLoginImpl.getAllEmployee();

			System.out.println("Size ---" + list.size());

			model.addAttribute("list", list);
			return "viewEmp";
		} else {
			model.addAttribute("msg", "User Not Loged In, Please login");
			return "index";
		}

	}

	@RequestMapping("/editemp/{id}")
	public String updateEmployee(@PathVariable int id, Model model) {

		System.out.println(id);

		Employee empObj = userLoginImpl.getEmployeeById(id);

		// System.out.println(empObj);
		model.addAttribute("empObj", empObj);

		return "updateEmp";
	}

	@RequestMapping(value = "/updateEmployee", method = RequestMethod.POST)
	public String updateEmployee(@ModelAttribute Employee employee, Model model) {

		System.out.println(employee);

		int status = userLoginImpl.updateEmployee(employee);

		if (status == 1) {
			return "redirect:/viewsEmp";
		} else {
			model.addAttribute("msg", "Employee Reccord is not Updated, please try Again !!");
			return "updateEmp";
		}

	}

	@RequestMapping("/deletEemp/{id}")
	public String deleteEmployee(@PathVariable int id) {
		userLoginImpl.deleteEmployee(id);
		return "redirect:/viewsEmp";
	}

}
