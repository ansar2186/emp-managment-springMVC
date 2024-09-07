package com.spring.mvc.controller;

import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
			@RequestParam String empCompany, @RequestParam String empAddress, @RequestParam String empExperince,
			@RequestParam String empId, @RequestParam String empSalary, @RequestParam String gender, Model model) {

		Random random = new Random();
		int id = random.nextInt(1000);

		Employee employee = new Employee(id, firstName, lastName, email, phone, age, empProfile, empCompany, empAddress,
				empExperince, empId, empSalary, gender);
		int status = userLoginImpl.addEmployee(employee);

		if (status == 1) {

			return "home";

		} else {
			model.addAttribute("msg", "Employee record not Saved , Please try agin !!");
		}

		return "addEmp";
	}

	@RequestMapping("/viewsEmp")
	public String showEmployeeData(Model model) {
		List<Employee> list = userLoginImpl.getAllEmployee();

		System.out.println("Size ---" + list.size());

		model.addAttribute("list", list);

		return "viewEmp";

	}

}
