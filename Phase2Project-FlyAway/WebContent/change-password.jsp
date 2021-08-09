<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="servlet.AdminLogin" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Change Password</title>
	</head>
	<body>
		<a href="index.jsp">FlyAway</a>
		<br>
		<a href="admin-login.jsp">Admin Login</a>
		<br>
		
		<section>
			<h1>Change Password</h1>
			<form action="change-password-confirmation.jsp" method="post">
				<p>Email address: admin@flyaway.com</p>
				New Password: <input type="password" name="passwordEntered" id="inputPassword">
				<p>Current Password : <%=AdminLogin.password%></p>
				<button type="submit">Change Password</button>
			</form>
		</section>
	</body>
</html>