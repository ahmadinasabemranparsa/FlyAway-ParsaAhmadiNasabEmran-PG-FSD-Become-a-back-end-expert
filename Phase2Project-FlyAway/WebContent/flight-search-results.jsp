<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.Booking" %>
<%@ page import="java.time.*" %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>  
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<%
	Booking.persons = Integer.parseInt(request.getParameter("persons"));
	Booking.source = request.getParameter("source");
	Booking.destination = request.getParameter("destination");
	Booking.date = request.getParameter("date");
	Booking.day = LocalDate.parse(request.getParameter("date")).getDayOfWeek().toString();
%>  

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Flight Search Results</title>
	</head>
	<body>
		<a href="index.jsp">FlyAway</a>
		<br>
		<a href="admin-login.jsp">Admin Login</a>
		<br>
		
		<section>
			<h2><span><strong>Flight Search Results</strong></span></h2>
			<p><span><strong>
				Showing available flights from <%=request.getParameter("source")%> to <%=request.getParameter("destination")%> <br>
				Date of Travel: <%=request.getParameter("date")%> <%=LocalDate.parse(request.getParameter("date")).getDayOfWeek().toString() %> <br>
				Number of Travellers: <%=Integer.parseInt(request.getParameter("persons"))%>
			</strong></span></p>
			<p><span><strong>Select A Flight</strong></span></p>
		</section>
		
		<section>
			<table>
				<thead>
					<tr>
						<th>Airline Name</th>
						<th>Flight Number</th>
						<th>Source</th>
						<th>Destination</th>
						<th>Date</th>
						<th>Ticket Price</th>
						<th>Select</th>
					</tr>
				</thead>
				<tbody>
					<sql:setDataSource  var="db" driver="com.mysql.cj.jdbc.Driver"
					url="jdbc:mysql://localhost:3306/FlyAway"
					user="root" password="PTempleOwl#1998" />
					
					<c:set var="source1" value='<%=request.getParameter("source") %>' />
					<c:set var="destination1" value='<%=request.getParameter("destination") %>' />
					<c:set var="day1" value='<%=LocalDate.parse(request.getParameter("date")).getDayOfWeek().toString() %>' />
					
					<sql:query dataSource="${db}" var="rs">  
					SELECT * from flights WHERE source = '${source1}' AND destination = '${destination1}' AND day = '${day1}';
					</sql:query>  
					
					<c:forEach var="table" items="${rs.rows}">
						<tr>
							<td><c:out value="${table.airline_name}"/></td>
							<td><c:out value="${table.flight_number}"/></td>
							<td><c:out value="${table.source}"/></td>
							<td><c:out value="${table.destination}"/></td>
							<td><%=request.getParameter("date")%></td>
							<td><c:out value="${table.ticket_price}"/></td>
							<td>
								<form action="user-booking-details.jsp" method="post">
									<input type="hidden" id="airline_name" name="airline_name" value="${table.airline_name}">
									<input type="hidden" id="flight_number" name="flight_number" value="${table.flight_number}">
									<input type="hidden" id="source" name="source" value="${table.source}">
									<input type="hidden" id="destination" name="destination" value="${table.destination}">
									<input type="hidden" id="date" name="date" value="<%=request.getParameter("date")%>">
									<input type="hidden" id="ticket_price" name="ticket_price" value="${table.ticket_price}">
									<button type="submit">Select A Flight</button>
								</form>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</section>
	</body>
</html>