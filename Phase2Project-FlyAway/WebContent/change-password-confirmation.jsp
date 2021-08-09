<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="servlet.AdminLogin" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Change Password Confirmation</title>
	</head>
	<body>
		<%
		AdminLogin.password = request.getParameter("passwordEntered");
		%>
		<p>Password changed. Your new password is <%=AdminLogin.password%></p>
		<form action="admin-dashboard.jsp" method="post">
			<button type="submit">Go To Admin Dashboard</button>
		</form>
	</body>
</html>