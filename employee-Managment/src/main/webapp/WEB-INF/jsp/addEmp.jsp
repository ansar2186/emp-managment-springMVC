<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<meta charset="UTF-8">
<title>AddEmp</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="#">Navbar</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
			<div class="navbar navbar-light bg-light">
				<a class="nav-item nav-link href="home">Home <span
					class="sr-only">(current)</span></a> <a class="nav-item nav-link"
					href="/employee-Managment/empForm">Add Employee</a> <a class="nav-item nav-link"
					href="/employee-Managment/viewsEmp">View Employee</a> <a
					class="nav-item nav-link disabled" href="#">logout</a>
			</div>
		</div>
	</nav>
	<h3>
		<div class="text-center mt-5">
			<font class="text-primary">Add Employee Form</font>
		</div>
	</h3>

	<h3 align="center">
		<font color="blue">${msg}</font>
	</h3>
	<div class="container mt-3">
		<div class="card m-3 p-5 card-header bg-info text-white">
			<form action="addEmployee" method="post">
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="inputEmail4">First Name</label> <input type="text"
							class="form-control" id="firstName" name="firstName"
							placeholder="first Name">
					</div>
					<div class="form-group col-md-6">
						<label for="inputPassword4">Last Name</label> <input type="text"
							name="lastName" class="form-control" id="lastName"
							placeholder="Last Name">
					</div>
				</div>
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="inputEmail4">Email</label> <input type="email"
							name="email" class="form-control" id="email" placeholder="Email">
					</div>
					<div class="form-group col-md-6">
						<label for="inputPassword4">Phone</label> <input
							type="text" name="phone" class="form-control"
							id="phone" placeholder="Phone">
					</div>
				</div>
				<div class="form-group">
					<label for="inputAddress">Age</label> <input type="text"
						class="form-control" id="age" name="age"
						>
				</div>
				<div class="form-group">
					<label for="inputAddress2">Employee Profile</label> <input type="text"
						class="form-control" id="empProfile" name="empProfile"
						placeholder="Apartment, studio, or floor">
				</div>
				
				<div class="form-group">
					<label for="inputAddress2">Address</label> <input type="text"
						class="form-control" id="empAddress" name="empAddress"
						>
				</div>
				<div class="form-group">
					<label for="inputAddress2">Experince</label> <input type="text"
						class="form-control" id="empExperince" name="empExperince"
						>
				</div>
				<!-- <div class="form-group">
					<label for="inputAddress2">Employee ID</label> <input type="text"
						class="form-control" id="empId" name="empId"
						>
				</div> -->
				<div class="form-group">
					<label for="inputAddress2">Salary</label> <input type="text"
						class="form-control" id="empSalary" name="empSalary""
						>
				</div>
				<!-- <div class="form-row">
					<div class="form-group col-md-6">
						<label for="inputCity">Company</label> <input type="text" name="empCompany"
							class="form-control" id="empCompany">
					</div> -->
					<div class="form-group col-md-4">
						<label for="inputState">Company</label> <select id="company"
							name="company" class="form-control">
							<option selected>...Choose...</option>
							<option>Wipro</option>
							<option>Infosys</option>
							<option>CodeCrafters</option>
							<option>Cognizant</option>
							<option>TechMahindra</option>
							<option>TataConsultancyService</option>
							<option>HCLTechnologies</option>
						</select>
					</div>
					<!-- <div class="form-group col-md-2">
						<label for="inputZip">Zip</label> <input type="text"
							name="pinCode" class="form-control" id="pinCode">
					</div> -->
				</div>
				<fieldset class="form-group">
					<div class="row">
						<legend class="col-form-label col-sm-2 pt-0">Gender</legend>
						<div class="col-sm-10">
							<div class="form-check">
								<input class="form-check-input" type="radio" name="gender"
									id="gender" value="Male" checked> <label
									class="form-check-label" for="gridRadios1"> Male </label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="radio" name="gender"
									id="gender" value="Female"> <label
									class="form-check-label" for="gridRadios2"> Female </label>
							</div>
							<div class="form-check disabled">
								<input class="form-check-input" type="radio" name="gender"
									id="gender" value="Other"> <label
									class="form-check-label" for="gridRadios3"> Other </label>
							</div>
						</div>
					</div>
				</fieldset>
				<!-- <div class="form-group row">
					<div class="col-sm-2">Checkbox</div>
					<div class="col-sm-10">
						<div class="form-check">
							<input class="form-check-input" type="checkbox" id="gridCheck1">
							<label class="form-check-label" for="gridCheck1"> Example
								checkbox </label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" id="gridCheck1">
							<label class="form-check-label" for="gridCheck1"> Example
								checkbox </label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" id="gridCheck1">
							<label class="form-check-label" for="gridCheck1"> Example
								checkbox </label>
						</div>
					</div>
				</div> -->
				<!-- <div class="form-group">
					<div class="form-check">
						<input class="form-check-input" type="checkbox" id="gridCheck">
						<label class="form-check-label" for="gridCheck"> Check me
							out </label>
					</div>
				</div> -->
				<div class="text-center">
					<button type="submit" class="btn btn-primary">Submit</button>
					<button type="reset" class="btn btn-primary">Reset</button>
				</div>
			</form>

		</div>
	</div>



	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>
</body>
</html>