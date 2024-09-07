package com.spring.mvc.entity;

public class Employee {

	private int id;
	private String firstName;
	private String lastName;
	private String email;
	private String phone;
	private String age;
	private String empProfile;
	private String empCompany;
	private String empAddress;
	private String empExperince;
	private String empId;
	private String empSalary;
	private String gender;
	public Employee() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Employee(int id, String firstName, String lastName, String email, String phone, String age,
			String empProfile, String empCompany, String empAddress, String empExperince, String empId,
			String empSalary, String gender) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.phone = phone;
		this.age = age;
		this.empProfile = empProfile;
		this.empCompany = empCompany;
		this.empAddress = empAddress;
		this.empExperince = empExperince;
		this.empId = empId;
		this.empSalary = empSalary;
		this.gender = gender;
	}

	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getEmpProfile() {
		return empProfile;
	}
	public void setEmpProfile(String empProfile) {
		this.empProfile = empProfile;
	}
	public String getEmpCompany() {
		return empCompany;
	}
	public void setEmpCompany(String empCompany) {
		this.empCompany = empCompany;
	}
	public String getEmpAddress() {
		return empAddress;
	}
	public void setEmpAddress(String empAddress) {
		this.empAddress = empAddress;
	}
	public String getEmpExperince() {
		return empExperince;
	}
	public void setEmpExperince(String empExperince) {
		this.empExperince = empExperince;
	}
	public String getEmpId() {
		return empId;
	}
	public void setEmpId(String empId) {
		this.empId = empId;
	}
	public String getEmpSalary() {
		return empSalary;
	}
	public void setEmpSalary(String empSalary) {
		this.empSalary = empSalary;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	@Override
	public String toString() {
		return "Employee [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", email=" + email
				+ ", phone=" + phone + ", age=" + age + ", empProfile=" + empProfile + ", empCompany=" + empCompany
				+ ", empAddress=" + empAddress + ", empExperince=" + empExperince + ", empId=" + empId + ", empSalary="
				+ empSalary + ", gender=" + gender + "]";

}
}