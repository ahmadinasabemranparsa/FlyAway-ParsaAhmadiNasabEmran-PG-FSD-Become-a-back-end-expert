<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>  
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page import="model.Booking" %>


<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Previous Flight Bookings</title>
	</head>
	<body>
		<a href="index.jsp">FlyAway</a>
		<br>
		<a href="admin-login.jsp">Admin Login</a>
		<br>
		
		<form action="admin-dashboard.jsp" method="post">
			<button type="submit">Go To Admin Dashboard</button>
		</form>
		
		<h2>Previous Flight Bookings</h2>
		
		<section>
			<table>
				<thead>
					<tr>
						<th>Passenger ID</th>
						<th>Passenger Name</th>
						<th>Passenger Email</th>
						<th>Passenger Phone</th>
						<th>Date</th>
						<th>Passenger Passport Number</th>
						<th>Passenger Visa Number</th>
						<th>Flight Number</th>
						<th>Airline Name</th>
						<th>Source</th>
						<th>Destination</th>
						<th>Ticket Price</th>
					</tr>
				</thead>
				<tbody>
					<sql:query dataSource="${db}" var="rs">  
					SELECT * from previously_booked_flights;
					</sql:query>
					<c:forEach var="table" items="${rs.rows}">
						<tr>
							<td><c:out value="${table.passenger_id}" /></td>
							<td><c:out value="${table.passenger_name}" /></td>
							<td><c:out value="${table.passenger_email}" /></td>
							<td><c:out value="${table.passenger_phone}" /></td>
							<td><c:out value="${table.date}" /></td>
							<td><c:out value="${table.passenger_passport_number}" /></td>
							<td><c:out value="${table.passenger_visa_number}" /></td>
							<td><c:out value="${table.flight_number}" /></td>
							<td><c:out value="${table.airline_name}" /></td>
							<td><c:out value="${table.source}" /></td>
							<td><c:out value="${table.destination}" /></td>
							<td><c:out value="${table.ticket_price}" /></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</section>
	</body>
</html>