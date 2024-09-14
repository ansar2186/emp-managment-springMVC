<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login Page</title>
<!-- Bootstrap CSS -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	background-color: #f8f9fa;
}

.login-container {
	max-width: 400px;
	margin: 100px auto;
}
</style>
</head>
<body>
	<div class="login-container">
		<div class="card">
			<div class="card-body">
				<h5 align="center">
					<font color="red">${msg}</font>
				</h5>
				<h5 class="card-title text-center">Login</h5>
				<form action="login" method="post">
					<div class="form-group">
						<label for="email">User Name</label> <input type="text"
							class="form-control" id="userName" name="userName"
							placeholder="Enter your User Name" required>
					</div>
					<div class="form-group">
						<label for="password">Password</label> <input type="password"
							class="form-control" id="password" name="password"
							placeholder="Enter your password" required>
					</div>
					<!-- <div class="form-check mb-3">
                        <input type="checkbox" class="form-check-input" id="rememberMe">
                        <label class="form-check-label" for="rememberMe">Remember me</label>
                    </div> -->
					<button type="submit" class="btn btn-primary btn-block">Login</button>
					<div class="text-center mt-3">
						<a href="register">User Registration?</a>
					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- Bootstrap JS and dependencies -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
