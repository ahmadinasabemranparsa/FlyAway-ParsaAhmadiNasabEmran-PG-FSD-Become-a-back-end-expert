<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.Booking" %>

<%
	Booking.passenger_name = request.getParameter("passenger_name");
	Booking.passenger_email = request.getParameter("passenger_email");
	Booking.passenger_phone = request.getParameter("passenger_phone");
	Booking.passenger_passport_number = request.getParameter("passenger_passport_number");
	Booking.passenger_visa_number = request.getParameter("passenger_visa_number");
%>    

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Payment</title>
	</head>
	<body>
		<a href="index.jsp">FlyAway</a>
		<br>
		<a href="admin-login.jsp">Admin Login</a>
		<br>
		
		<h1>Checkout</h1>
		<p><span><strong>Enter Payment Details</strong></span></p>
		
		<section>
			<form action="thank-you.jsp" method="post">
				Name On Card: <input type="text" name="name_on_card" id="name_on_card">
				Card Number: <input type="number" name="card_number" id="card_number">
				<p><span><strong>Total fare = <br> <%=Booking.ticket_price%> X <%=Booking.persons%> persons = Rs.<%=Booking.ticket_price*Booking.persons%></strong></span></p>
				<button type="submit">Submit Payment Details</button>
			</form>
		</section>
	</body>
</html>