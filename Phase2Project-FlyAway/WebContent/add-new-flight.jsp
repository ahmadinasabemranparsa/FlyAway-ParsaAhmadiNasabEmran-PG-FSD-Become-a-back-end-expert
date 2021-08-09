<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Add New Flight</title>
	</head>
	<body>
		<a href="index.jsp">FlyAway</a>
		<br>
		<a href="admin-login.jsp">Admin Login</a>
		<br>
		<h2><span><strong>Add A New Flight</strong></span></h2>
		<form action="add-new-flight-confirmation.jsp" method="post">
			Airline Name: <input type="text" name="airline_name" id="airline_name">
			Ticket Price: <input type="number" name="ticket_price" id="ticket_price">
			Flight Number: <input type="number" name="flight_number" id="flight_number">
			Source: <input type="text" name="source" id="source">
			Destination: <input type="text" name="destination" id="destination">
			Day: <input type="text" name="day" id="day">
			<button type="submit">Add A New Flight</button>
		</form> 
	</body>
</html>