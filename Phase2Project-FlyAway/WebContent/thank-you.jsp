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
	
		<section>
			<sql:setDataSource  var="db" driver="com.mysql.cj.jdbc.Driver"
			url="jdbc:mysql://localhost:3306/FlyAway"
			user="root" password="PTempleOwl#1998" />
			
			<c:set var="passenger_name1" value="<%=Booking.passenger_name %>"/>
			<c:set var="passenger_email1" value="<%=Booking.passenger_email %>" />
			<c:set var="passenger_phone1" value="<%=Booking.passenger_phone %>" />
			<c:set var="date1" value="<%=Booking.date %>" />
			<c:set var="passenger_passport_number1" value="<%=Booking.passenger_passport_number %>" />
			<c:set var="passenger_visa_number" value="<%=Booking.passenger_visa_number %>" />
			<c:set var="flight_number1" value="<%=Booking.flight_number %>" />
			<c:set var="airline_name1" value="<%=Booking.airline_name %>" />
			<c:set var="source1" value="<%=Booking.source %>" />
			<c:set var="destination1" value="<%=Booking.destination %>"/>
			<c:set var="ticket_price1" value="<%=Booking.ticket_price %>" />
			
			<sql:update dataSource="${db}" var="count">
				INSEERT INTO previously_booked_flights (passenger_name, passenger_email, passenger_phone, date, passenger_passport_number, passenger_visa_number, flight_number, airline_name, source, destination, ticket_price) VALUES ("${passenger_name1}", "${passenger_email1}", "${passenger_phone1}", "${date1}", "${passenger_passport_number1}", "${passenger_visa_number1}", ${flight_number1}, "${airline_name1}", "${source1}", "${destination1}", ${ticket_price1});
			</sql:update>
			
			<p><span><strong>User Booked Flight Ticket Information Was Stored Successfully</strong></span></p>
		</section>
	
		<a href="index.jsp">FlyAway</a>
		<br>
		<a href="admin-login.jsp">Admin Login</a>
		<br>
		
		<section>
			<h2>Thank You For Booking Your Flight</h2>
			<p><span><strong>Your ticket has been booked. The summary/details are as follows:</strong></span></p>
			<h3>Booked Flight Ticket Summary</h3>
			<h4><strong>from <%=Booking.source %> to <%=Booking.destination %> | <%=Booking.date %> (<%=Booking.day %>)</strong></h4>
			<h5>Flight Number: <%=Booking.flight_number %> | Airline Name: <%=Booking.airline_name %> | Number of Travellers: <%=Booking.persons %></h5>
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