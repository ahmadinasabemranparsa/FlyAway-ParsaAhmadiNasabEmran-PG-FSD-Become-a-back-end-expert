<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.Booking" %>

<% 
	Booking.flight_number = Integer.parseInt(request.getParameter("flight_number"));
	Booking.ticket_price = Integer.parseInt(request.getParameter("ticket_price"));
	Booking.airline_name = request.getParameter("airline_name");
	Booking.date = request.getParameter(request.getParameter("date"));
	Booking.source = request.getParameter(request.getParameter("source"));
	Booking.destination = request.getParameter("destination");
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
				Passenger Name: <input type="text" name="passenger_name" id="passenger_name">
				Passenger Email: <input type="text" name="passenger_email" id="passenger_email">
				Passenger Phone: <input type="text" name="passenger_phone" id="passenger_phone">
				Passenger Passport Number: <input type="text" name="passenger_passport_number" id="passenger_passport_number">
				Passenger Visa Number: <input type="text" name="passenger_visa_number" id="passenger_visa_number">
				<button type="submit">Submit Passenger Details</button>
			</form>
		</section>
	</body>
</html>