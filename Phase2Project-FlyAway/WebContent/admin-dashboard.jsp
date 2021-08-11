<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>  
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page import="servlet.AdminLogin" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Admin Dashboard</title>
	</head>
	<body>
		<sql:setDataSource  var="db" driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/FlyAway"
		user="root" password="PTempleOwl#1998" />
		
		<h2>Admin Dashboard</h2>
		
		<a href="index.jsp">FlyAway</a>
		<br>
		<a href="admin-login.jsp">Admin Login</a>
		<br>
		
		<p><span><strong>You are LoggedIn as : <%=AdminLogin.email%>. Your password is <%=AdminLogin.password%>.</strong></span></p>
		
		<section>
			<form action="change-password.jsp" method="post">
				<button type="submit">Change Password</button>
			</form>
			
			<form action="add-new-flight.jsp" method="post">
				<button type="submit">Add New Flight</button>
			</form>
			
			<form action="admin-login.jsp" method="post">
				<button type="submit">Logout</button>
			</form>
		</section>
		
		<section>
			<table>
				<thead>
					<tr>
						<th>Flight Number</th>
						<th>Airline Name</th>
						<th>Source</th>
						<th>Destination</th>
						<th>Day</th>
						<th>Ticket Price</th>
					</tr>
				</thead>
				<tbody>
					<sql:query dataSource="${db}" var="rs">  
					SELECT * from flights;
					</sql:query>
					<c:forEach var="table" items="${rs.rows}">
						<tr>
							<td><c:out value="${table.flight_number}"/></td>
							<td><c:out value="${table.airline_name}"/></td>
							<td><c:out value="${table.source}"/></td>
							<td><c:out value="${table.destination}"/></td>
							<td><c:out value="${table.day}"/></td>
							<td><c:out value="${table.ticket_price}"/></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</section>
	</body>
</html>