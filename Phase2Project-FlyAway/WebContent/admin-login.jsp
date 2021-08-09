<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="servlet.AdminLogin" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Admin Login</title>
	</head>
	<body>
		<a href="index.jsp">FlyAway</a>
		<br>
		<a href="admin-login.jsp">Admin Login</a>
		<br>
		
		<section>
			<h2><b>Admin Login</b></h2>
			<form action="admin-login" method="post">
				Email: <input type="text" name="emailEntered" id="inputEmail">
				Password: <input type="password" name="passwordEntered" id="inputPassword">
				<button type="submit">Admin Login</button>
			</form>
			<br><small>Email: admin@flyaway.com</small>
			<br><small>Password: <%=AdminLogin.password%></small>
		</section>
	</body>
</html>