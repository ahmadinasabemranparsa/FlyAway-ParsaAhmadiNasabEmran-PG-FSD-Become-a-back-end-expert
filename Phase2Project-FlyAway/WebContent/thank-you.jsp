<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>  
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page import="model.Booking" %>
<% 
	Booking.name_on_card = request.getParameter("name_on_card");
	Booking.card_number = Integer.parseInt(request.getParameter("card_number"));
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Thank You For Booking Your Flight</title>
	</head>
	<body>
		<a href="index.jsp">FlyAway</a>
		<br>
		<a href="admin-login.jsp">Admin Login</a>
		<br>
		
		<section>
			<h2>Thank You For Booking Your Flight</h2>
			<p><span><strong>Your ticket has been booked. The summary/details are as follows:</strong></span></p>
			<h3>Booked Flight Ticket Summary</h3>
			<h4><strong>from <%=Booking.source %> to <%=Booking.destination %> | <%=Booking.date %> (<%=Booking.day %>)</strong></h4>
			<h4>Flight Number: <%=Booking.flight_number %> | Airline Name: <%=Booking.airline_name %> | Number of Travellers: <%=Booking.persons %></h4>
			<br>
			<h3><strong>Passenger Summary</strong></h3>
			<h4>Passenger Name: <%=Booking.passenger_name %> | Passenger Email: <%=Booking.passenger_name %> | Passenger Phone: <%=Booking.passenger_phone %></h4>
			<h4>Passenger Passport Number: <%=Booking.passenger_passport_number %> | Passenger Visa Number: <%=Booking.passenger_visa_number %></h4>
			<br>
			<h3><strong>Payment Summary</strong></h3>
			<h4>Payment By: <%=Booking.name_on_card %> | Card Number: <%=Booking.card_number %></h4>
			<h4><strong>Total Paid: Rs.<%=Booking.persons*Booking.ticket_price %></strong></h4>
		</section>
	</body>
</html>