<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sign Up</title>
<!-- Bootstrap CSS -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	background-color: #f8f9fa;
}

.signup-container {
	max-width: 500px;
	margin: 100px auto;
}
</style>
</head>
<body>
	<div class="signup-container">
		<div class="card">
			<div class="card-body">
				<h5 class="card-title text-center">Sign Up</h5>
				<h5 align="center">
					<font color="red">${msg}</font>
				</h5>
				<form action="userSignUp" method="post">
					<div class="form-group">
						<label for="firstName">User Name</label> <input type="text"
							class="form-control" id="userName" name="userName"
							placeholder="Enter your User name" required>
					</div>

					<div class="form-group">
						<label for="email">Email address</label> <input type="email"
							class="form-control" id="email" name="email"
							placeholder="Enter your email" required>
					</div>
					<div class="form-group">
						<label for="password">Password</label> <input type="password"
							class="form-control" id="password" name="password"
							placeholder="Enter your password" required>
					</div>

					<button type="submit" class="btn btn-primary btn-block">Sign
						Up</button>
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
