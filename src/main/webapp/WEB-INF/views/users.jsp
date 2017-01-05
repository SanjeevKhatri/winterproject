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
			<th>User Id</th>
			<th>Name</th>
			<th>Email</th>
			<th>Password</th>
			<th>City</th>
		</tr>

		<c:forEach var="user" items="${users}">
			<tr>
				<td>${user.name}</td>
				<td>${user.email}</td>
				<td>${user.password}</td>
				<td>${user.id}</td>
				<td>${user.address.city}</td>
				<td>
					<form action="delete" method="post">
						<input name="userId" value="${user.id}" type="hidden">
						<input type="submit" value="delete">
					</form>
				</td>

				<td>
					<form action="updateUser" method="post">
						<input style="border-radius: 2px" type="hidden"
							name="userId" value="${user.id}"> <input
							type="submit" value="Update">
					</form>
				</td>
			</tr>
		</c:forEach>
	</table>
	<a href="addUser">AddUser</a>
</body>
</html>