<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<body>
	<h2 align="center">User Login Page</h2>
	<table align="center">
		<form action="login" method="post">
			<tr>

				<td>User Name:<input type="text" name="userName" id="userName"></td>
			</tr>
			<tr>

				<td>User Password:<input type="password" name="password"
					id="password"></td>
			</tr>
			<tr>

				<td><button type="submit">Login</button></td>
			</tr>

		</form>
		<tr>
			<td><button a href="regitser">Registration</button></td>
		</tr>

	</table>
</body>
</html>
