<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>viewEmp</title>
</head>
<body>
	<!-- Table -->
	<h2>viewEmp Table</h2>
	<table class="table table-bordered m-5">
		<thead>
			<tr>
				<th>id</th>
				<th>firstName</th>
				<th>lastName</th>
				<th>email</th>
				<th>phone</th>
				<th>age</th>
				<th>empProfile</th>
				<th>empCompany</th>
				<th>empAddress</th>
				<th>empExperince</th>
				<th>empId</th>
				<th>empSalary</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="emp" items="${list}">
				<tr>
					<td>${emp.id}</td>
					<td>${emp.firstName}</td>
					<td>${emp.lastName}</td>
					<td>${emp.email}</td>
					<td>${emp.phone}</td>
					<td>${emp.age}</td>
					<td>${emp.empProfile}</td>
					<td>${emp.empCompany}</td>
					<td>${emp.empAddress}</td>
					<td>${emp.empExperince}</td>
					<td>${emp.empId}</td>
					<td>${emp.empSalary}</td>
					<td>${emp.gender}</td>

					<td><a href="editemp/${emp.id}">Edit</a>&nbsp;&nbsp; <a
						href="deleteemp/${emp.id}">Delete</a></td>
				</tr>
			</c:forEach>

		</tbody>

	</table>
</body>
</html>