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
			Airline Name: <input type="text" name="airline_name" id="airline_name"><br>
			Ticket Price: <input type="number" name="ticket_price" id="ticket_price"><br>
			Source: <input type="text" name="source" id="source"><br>
			Destination: <input type="text" name="destination" id="destination"><br>
			Day: <input type="text" name="day" id="day"><br>
			<button type="submit">Add A New Flight</button>
		</form> 
	</body>
</html>