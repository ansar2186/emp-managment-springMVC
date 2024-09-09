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
<title>viewEmp</title>
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
					href="/employee-Managment/addEmp">Add Employee</a> <a
					class="nav-item nav-link" href="/employee-Managment/viewsEmp">View
					Employee</a> <a class="nav-item nav-link disabled" href="#">logout</a>
			</div>
		</div>
	</nav>
	<!-- Table -->
	<h2 align="center">
		<font color="blue">Employee Table</font>
	</h2>
	<table class="table table-bordered">
		<thead>
			<tr>
				<th scope="col">id</th>
				<th scope="col">firstName</th>
				<th scope="col">lastName</th>
				<th scope="col">empId</th>
				<th scope="col">email</th>
				<th scope="col">phone</th>
				<th scope="col">age</th>
				<th scope="col">empProfile</th>
				<th scope="col">empCompany</th>
				<th scope="col">empAddress</th>
				<th scope="col">empExperince</th>
				<th scope="col">empSalary</th>
				<th scope="col">gender</th>
				<th scope="col">Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="emp" items="${list}">
				<tr>
					<td>${emp.id}</td>
					<td>${emp.firstName}</td>
					<td>${emp.lastName}</td>
					<td>${emp.empId}</td>
					<td>${emp.email}</td>
					<td>${emp.phone}</td>
					<td>${emp.age}</td>
					<td>${emp.empProfile}</td>
					<td>${emp.empCompany}</td>
					<td>${emp.empAddress}</td>
					<td>${emp.empExperince}</td>
					<td>${emp.empSalary}</td>
					<td>${emp.gender}</td>

					<td><a href="editemp/${emp.id}">Edit</a>&nbsp;&nbsp; <a
						href="deleteemp/${emp.id}">Delete</a></td>
				</tr>
			</c:forEach>

		</tbody>
	</table>

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