<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="title">${event.name}</div>
	<ul>
		<li>${event.date}</li>
		<li>${event.place}</li>
		<c:forEach var="user" items="${event.users}">
			<li class="members">
				<ul>
					<li>${user.name}</li>						
				</ul>
			</li>
		</c:forEach>
		<c:forEach var="item" items="${event.items}">
			<li class="items">
				<ul>
					<li>${item.name}</li>
					<li>${item.price}</li>						
				</ul>
			</li>
		</c:forEach>
		<li>${totalAmount}</li>
	</ul>
</body>
</html>