
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>My Circle</title>

<!-- Bootstrap Core CSS -->
<link href="resources/contains/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="resources/contains/vendor/metisMenu/metisMenu.min.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link href="resources/contains/dist/css/sb-admin-2.css" rel="stylesheet">

<!-- Custom Fonts -->
<link
	href="resources/contains/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
	<%-- <%@include file="Admin/header.jsp" %>
 --%>

	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Please Sign Up</h3>
					</div>
					<div class="panel-body">
						<form:form action="addUser" method="post" commandName="user"
							enctype="multipart/form-data">
							<table>


								<tr>
									<td>Name</td>
									<td><div class="form-group">
											<form:input class="form-control" type="text" name="name"
												id="name" path="name" value="${user.name}" />
										</div></td>
								</tr>


								<tr>
									<td>Email</td>
									<td><div class="form-group">
											<form:input class="form-control" type="email" name="email"
												id="email" path="email" value="${user.email}" />
										</div></td>
								</tr>


								<tr>
									<td>Password</td>
									<td><div class="form-group">
											<form:input class="form-control" type="password"
												name="password" id="password" path="password"
												value="${user.password}" />
										</div></td>
								</tr>


								<tr>
									<td>City</td>
									<td><div class="form-group">
											<form:input class="form-control" type="text" name="city"
												id="city" path="address.city" />
										</div></td>
								</tr>
								<tr>
									<td>Street</td>
									<td><div class="form-group">
											<form:input class="form-control" id="street" name="street"
												path="address.street" type="text" />
										</div></td>
								</tr>
								<tr>
									<td>Zip Code</td>
									<td><div class="form-group">
											<form:input class="form-control" id="zip" name="zip"
												path="address.zip" type="text" />
										</div></td>
								</tr>
								<tr>
									<td>State</td>
									<td>
										<div class="form-group">
											<select class="form-control" path="address.state" id="state"
												name="state">
												<option value="AL">Alabama</option>
												<option value="AK">Alaska</option>
												<option value="AZ">Arizona</option>
												<option value="AR">Arkansas</option>
												<option value="CA">California</option>
												<option value="CO">Colorado</option>
												<option value="CT">Connecticut</option>
												<option value="DE">Delaware</option>
												<option value="DC">District of Columbia</option>
												<option value="FL">Florida</option>
												<option value="GA">Georgia</option>
												<option value="HI">Hawaii</option>
												<option value="ID">Idaho</option>
												<option value="IL">Illinois</option>
												<option value="IN">Indiana</option>
												<option value="IA">Iowa</option>
												<option value="KS">Kansas</option>
												<option value="KY">Kentucky</option>
												<option value="LA">Louisiana</option>
												<option value="ME">Maine</option>
												<option value="MD">Maryland</option>
												<option value="MA">Massachusetts</option>
												<option value="MI">Michigan</option>
												<option value="MN">Minnesota</option>
												<option value="MS">Mississippi</option>
												<option value="MO">Missouri</option>
												<option value="MT">Montana</option>
												<option value="NE">Nebraska</option>
												<option value="NV">Nevada</option>
												<option value="NH">New Hampshire</option>
												<option value="NJ">New Jersey</option>
												<option value="NM">New Mexico</option>
												<option value="NY">New York</option>
												<option value="NC">North Carolina</option>
												<option value="ND">North Dakota</option>
												<option value="OH">Ohio</option>
												<option value="OK">Oklahoma</option>
												<option value="OR">Oregon</option>
												<option value="PA">Pennsylvania</option>
												<option value="RI">Rhode Island</option>
												<option value="SC">South Carolina</option>
												<option value="SD">South Dakota</option>
												<option value="TN">Tennessee</option>
												<option value="TX">Texas</option>
												<option value="UT">Utah</option>
												<option value="VT">Vermont</option>
												<option value="VA">Virginia</option>
												<option value="WA">Washington</option>
												<option value="WV">West Virginia</option>
												<option value="WI">Wisconsin</option>
												<option value="WY">Wyoming</option>
											</select>
										</div>
									</td>
								</tr>

								<tr>
									<td>Choose Image:</td>
									<td><div class="form-group">
											<form:input class="input-group form-control" type="file"
												path="image" />
										</div></td>
								</tr>

								<tr>
									<td>Date Of Birth</td>
									<td><div class="form-group">
											<form:input class="form-control" id="dob" name="dob" path="dob"
												type="date" />
										</div></td>
								</tr>


								<tr>
									<td></td>
									<td><input class="btn btn-lg btn-success btn-block"
										type="submit" value="submit"></td>
								</tr>


							</table>
						</form:form>
					</div></div>
					<p>Already a Member ?</p>
					<a href="/hello" class="btn btn-lg btn-success btn-block">Login</a>

				
			</div>
		</div>
	</div>

	<!-- jQuery -->
	<script src="resources/contains/vendor/jquery/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="resources/contains/vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="resources/contains/vendor/metisMenu/metisMenu.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="resources/contains/dist/js/sb-admin-2.js"></script>

</body>
</html>