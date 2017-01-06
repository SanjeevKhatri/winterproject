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
	<div>
		<h1>${event.name}</h1>
	</div>
	<div class="content">
		<ul>
			<li>${event.date}</li>
			<li>${event.place}</li>
			<li>
				<c:forEach var="user" items="${activeUser}">
					<p class="activeMembers">
						${user.name}
					</p>
				</c:forEach>
			</li>
			<li>
				<form action="/hello/addEventUser" method="post">
					<c:forEach var="user" items="${users}">
						<li class="members">
							<input type = "hidden" name = "eventId" value="${event.id}"/>
							<input type="checkbox" name="user" value="${user.name}" />${user.name}
						</li>
					</c:forEach>
					<input type="submit" name="save" />
				</form>
			</li>
			
			<c:forEach var="item" items="${items}">
				<li class="items">
					<ul>
						<li>${item.name}</li>
						<li>${item.price}</li>						
					</ul>
				</li>
			</c:forEach>
			
			
		</ul>
		<form action = "/hello/addEventItem" method = "post">
			<input type = "text" name="name" />
			<input type = "text" name="price" />
			<input type = "hidden" name = "eventId" value="${event.id}"/>
			<input type = "submit" value = "Add Product" />
		</form>
		<a href="/hello/addEventDetail/${event.id}">Finish and Save</a>
	</div>
</body>
</html>