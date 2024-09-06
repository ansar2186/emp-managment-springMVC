<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<body>
	<h2 align="center">User Login Page</h2>
	<h3 align="center">
		<font color="red">${msg}</font>
	</h3>

	<table align="center">
		<form action="login" method="post">
			<tr>
				<td>User Name:</td>

				<td><input type="text" name="userName" id="userName"
					required="required"></td>
			</tr>
			<tr>
				<td>User Password:</td>

				<td><input type="password" name="password" id="password"
					required="required"></td>
			</tr>
			<tr>
				<td></td>
				<td><button type="submit">Login</button></td>
			</tr>

		</form>

	</table>
</body>
</html>
