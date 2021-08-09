<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>FlyAway Flight Search</title>
	</head>
	<body>
		<a href="index.jsp">FlyAway</a>
		<br>
		<a href="admin-login.jsp">Admin Login</a>
		<br>
		
		<section>
			<h2><b>FlyAway <br> Ticket Booking</b></h2>
			<section>
				<form action="flight-search-results.jsp" method="post">
					<label for="date">Date</label>
					<input type="date" id="date" name="date">
					<label for="source">Source</label>
					<select id="source" name="source">
						<option value="India">India</option>
						<option value="USA">USA</option>
						<option value="UK">UK</option>
					</select>
					<label for="destination">Destination</label>
					<select id="destination" name="destination">
						<option value="India">India</option>
						<option value="USA">USA</option>
						<option value="UK">UK</option>
					</select>
					<label for="persons">Number of Persons</label>
					<select id="persons" name="persons">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
					</select>
					<br>
					<button type="submit">Search for Flights</button>
				</form>
			</section>
		</section>
	</body>
</html>