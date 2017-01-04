<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Products</title>
<%-- 	<%@include file=".jsp" %> --%>
</head>
<body>

	<table border="1px" cellspacing="10px">
		<tr>
			<th>Event Id</th>
			<th>Name</th>
			<th>Place</th>
		</tr>

		<c:forEach var="event" items="${events}">
			<tr>
				<td>${event.name}</td>
				<td>${event.place}</td>
				<td>${event.id}</td>
				<td>
					<form action="deleteEvent" method="post">
						<input name="eventId" value="${event.id}" type="hidden">
						<input type="submit" value="delete">
					</form>
				</td>

				<td>
					<form action="updateEvent" method="post">
						<input style="border-radius: 2px" type="hidden"
							name="eventId" value="${event.id}"> <input
							type="submit" value="Update">
					</form>
				</td>
			</tr>
		</c:forEach>
	</table>
	<a href="addEvent">AddEvent</a>
</body>
</html>