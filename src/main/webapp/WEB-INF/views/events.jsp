<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

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

<!-- Morris Charts CSS -->
<link href="resources/contains/vendor/morrisjs/morris.css"
	rel="stylesheet">

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

	<div id="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.html">My Circle</a>
		</div>
		<!-- /.navbar-header -->

		<ul class="nav navbar-top-links navbar-right">

			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"> <i class="fa fa-bell fa-fw"></i>
					<i class="fa fa-caret-down"></i>
			</a>
				<ul class="dropdown-menu dropdown-alerts">
					<li><a href="#">
							<div>
								<i class="fa fa-edit fa-fw"></i> New Post <span
									class="pull-right text-muted small">4 minutes ago</span>
							</div>
					</a></li>
					<li><a href="#">
							<div>
								<i class="fa fa-table fa-fw"></i> New Event <span
									class="pull-right text-muted small">1 minutes ago</span>
							</div>
					</a></li>
				</ul></li>


			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"> <i class="fa fa-envelope fa-fw"></i>
					<i class="fa fa-caret-down"></i>
			</a>
				<ul class="dropdown-menu dropdown-messages">
					<li><a href="#">
							<div>
								<strong>John Smith</strong> <span class="pull-right text-muted">
									<em>Yesterday</em>
								</span>
							</div>
							<div>Lorem ipsum dolor sit amet, consectetur adipiscing
								elit. Pellentesque eleifend...</div>
					</a></li>
					<li class="divider"></li>
					<li><a class="text-center" href="#"> <strong>Read
								All Messages</strong> <i class="fa fa-angle-right"></i>
					</a></li>
				</ul> <!-- /.dropdown-messages --></li>


			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"> <i class="fa fa-user fa-fw"></i>
					<i class="fa fa-caret-down"></i>
			</a>
				<ul class="dropdown-menu dropdown-user">
					<li><a href="#"><i class="fa fa-user fa-fw"></i> User
							Profile</a></li>
					<li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
					</li>
					<li class="divider"></li>
					<li><a href="/hello"><i class="fa fa-sign-out fa-fw"></i>
							Logout</a></li>
				</ul> <!-- /.dropdown-user --></li>
			<!-- /.dropdown -->
		</ul>
		<!-- /.navbar-top-links -->

		<div class="navbar-default sidebar" role="navigation">
			<div class="sidebar-nav navbar-collapse">
				<ul class="nav" id="side-menu">
					<li class="sidebar-search">
						<div class="input-group custom-search-form">
							<input type="text" class="form-control" placeholder="Search...">
							<span class="input-group-btn">
								<button class="btn btn-default" type="button">
									<i class="fa fa-search"></i>
								</button>
							</span>
						</div> <!-- /input-group -->
					</li>


					<li><a href="tables.html"><i class="fa fa-table fa-fw"></i>
							Events<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="events">See Event</a></li>
							<li><a href="addEvent">Add Event</a></li>
						</ul></li>
					<li><a href="forms.html"><i class="fa fa-edit fa-fw"></i>
							Posts<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="#">See Post</a></li>
							<li><a href="#">Add Post</a></li>
						</ul></li>
				</ul>
			</div>
			<!-- /.sidebar-collapse -->
		</div>
		<!-- /.navbar-static-side --> </nav>

		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">
						<i class="fa fa-edit fa-fw"></i> Events
					</h1>
					<c:forEach var="event" items="${events}">

						<div class="panel panel-default">
							<div class="panel-heading">
								<div class="timeline-panel">
									<div class="timeline-heading">
										<h4 class="timeline-title">
											${event.name}

											<!--------------------------------delete------------------------------------->

											<form action="deleteEvent" method="post">

												<input name="eventId" value="${event.id}" type="hidden">
												<input type="submit" class="btn btn-info" value="delete">
											</form>

											<!---------------------------------update------------------------------------>

											<form action="updateEvent" method="post">
												<input style="border-radius: 2px" type="hidden"
													name="eventId" value="${event.id}"> <input
													type="submit" class="btn btn-info" value="update">
											</form>

											<!--------------------------------------------------------------------->
										</h4>
										<p>
											<small class="text-muted"><i class="fa fa-clock-o"></i>${event.date}</small>
										</p>
									</div>


									<div class="timeline-body">
										<p>${event.place}</p>

										<a href="eventDetail/${event.id}" type="button"
											class="btn btn-primary">Event Detail</a>
										<!--------------------------------------------------------------------->

									</div>


								</div>
							</div>
						</div>

					</c:forEach>


				</div>
			</div>
		</div>
		<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->

	<!-- jQuery -->
	<script src="resources/contains/vendor/jquery/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="resources/contains/vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="resources/contains/vendor/metisMenu/metisMenu.min.js"></script>

	<!-- Morris Charts JavaScript -->
	<script src="resources/contains/vendor/raphael/raphael.min.js"></script>
	<script src="resources/contains/vendor/morrisjs/morris.min.js"></script>
	<script src="resources/contains/data/morris-data.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="resources/contains/dist/js/sb-admin-2.js"></script>


</body>

</html>

