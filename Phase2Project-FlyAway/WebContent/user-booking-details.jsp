<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.Booking" %>

<% 
	Booking.flight_number = Integer.parseInt(request.getParameter("flight_number"));
	Booking.ticket_price = Integer.parseInt(request.getParameter("ticket_price"));
	Booking.airline_name = request.getParameter("airline_name");
	Booking.destination = request.getParameter("destination");
	Booking.date = request.getParameter("date");
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>User Booking Details</title>
	</head>
	<body>
		
		<a href="index.jsp">FlyAway</a>
		<br>
		<a href="admin-login.jsp">Admin Login</a>
		<br>
		<section>
			<h1>User Booking Details</h1>
			<p>Enter Passenger Details</p>
		</section>
		
		<section>
			<form action="payment.jsp" method="post">
				Passenger Name: <input type="text" name="passenger_name" id="passenger_name"><br>
				Passenger Email: <input type="text" name="passenger_email" id="passenger_email"><br>
				Passenger Phone: <input type="text" name="passenger_phone" id="passenger_phone"><br>
				Passenger Passport Number: <input type="text" name="passenger_passport_number" id="passenger_passport_number"><br>
				Passenger Visa Number: <input type="text" name="passenger_visa_number" id="passenger_visa_number"><br>
				<button type="submit">Submit Passenger Details</button>
			</form>
		</section>
	</body>
</html>