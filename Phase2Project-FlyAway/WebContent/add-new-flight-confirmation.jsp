<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>  
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>New Flight Was Added Sucessfully</title>
	</head>
	<body>
		<sql:setDataSource  var="db" driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/FlyAway"
		user="root" password="PTempleOwl#1998" />
		
		<c:set var="airline_name1" value='<%= request.getParameter("airline_name") %>' />
		<c:set var="source1" value='<%= request.getParameter("source") %>' />
		<c:set var="destination1" value='<%= request.getParameter("destination") %>' />
		<c:set var="day1" value='<%= request.getParameter("day") %>' />
		<c:set var="ticket_price1" value='<%= Integer.parseInt(request.getParameter("ticket_price")) %>' />
		
		<sql:update dataSource="${db}" var="count"> 
			INSERT INTO flights (airline_name, source, destination, day, ticket_price) VALUES ("${airline_name1}", "${source1}", "${destination1}", "${day1}", ${ticket_price1}); 
		</sql:update>
		
		<p>New Flight Was Added Successfully</p>
		
		<form action="admin-dashboard.jsp" method="post">
			<button type="submit">Go To Admin Dashboard</button>
		</form>
	</body>
</html>