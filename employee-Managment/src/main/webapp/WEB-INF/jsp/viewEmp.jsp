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
	<table style="border: solid;" algin="center" bg-color="Red">
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
			<%-- <c:forEach var="list" items=" ${viewEmp}">
				<tr>
					<td>${list.firstName}</td>
					<td>${list.lastName}</td>
					<td>${list.email}</td>
					<td>${list.phone}</td>
					<td>${list.age}</td>
					<td>${list.empProfile}</td>
					<td>${list.empCompany}</td>
					<td>${list.empAddress}</td>
					<td>${list.empExperince}</td>
					<td>${list.empId}</td>
					<td>${list.empSalary}</td>
				</tr>
			</c:forEach>
 --%>
		</tbody>

	</table>
</body>
</html>