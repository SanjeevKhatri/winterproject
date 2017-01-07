<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link
	href="../resources/contains/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="../resources/contains/vendor/metisMenu/metisMenu.min.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link href="../resources/contains/dist/css/sb-admin-2.css"
	rel="stylesheet">

<!-- Morris Charts CSS -->
<link href="../resources/contains/vendor/morrisjs/morris.css"
	rel="stylesheet">

<!-- Custom Fonts -->
<link
	href="../resources/contains/vendor/font-awesome/css/font-awesome.min.css"
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
					<li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i>
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
							<li><a href="/hello/events">See Event</a></li>
							<li><a href="/hello/addEvent">Add Event</a></li>
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
						<i class="fa fa-edit fa-fw"></i> Event Details
					</h1>



					<div>
						<h1>Event Title: ${event.name}</h1>
					</div>
					<div class="content">
						<p>
							<small class="text-muted"><i class="fa fa-clock-o"></i>Event
								Date: ${event.date}</small>
						</p>
						Event Place: ${event.place}
						<hr>

						<!----------------------------------------Members---------------------------------------------->
						<a class="btn btn-primary" data-toggle="modal" href="#myModal">Add
							Members Involved</a>
						<div class="modal fade" id="myModal" role="dialog">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-label="">
											<span>×</span>
										</button>
										<h4 class="modal-title" style="text-align: center">Members
											in Group</h4>
									</div>
									<div class="modal-body">
										<c:forEach var="user" items="${activeUser}">
											<p class="activeMembers">${user.name}</p>
										</c:forEach>

										<form action="/hello/addEventUser" method="post">
											<c:forEach var="user" items="${users}">
												<li class="members"><input type="hidden" name="eventId"
													value="${event.id}" /> <input type="checkbox" name="user"
													value="${user.name}" />${user.name}</li>
											</c:forEach>
											<input type="submit" name="save" />
										</form>


									</div>
									<div class="modal-footer"></div>
								</div>
							</div>
						</div>
						<!-------------------------------------------------------------------------------------->


						<!----------------------------------------Items---------------------------------------------->
						<a class="btn btn-primary" data-toggle="modal" href="#myModalItem">Add
							Items Used</a>
						<div class="modal fade" id="myModalItem" role="dialog">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-label="">
											<span>×</span>
										</button>
										<h4 class="modal-title" style="text-align: center">Members
											in Group</h4>
									</div>
									<div class="modal-body">
										<c:forEach var="item" items="${items}">
											<li class="items">
												<ul>
													<li>Item Name: ${item.name}</li>
													<li>Item Price: ${item.price}</li>
												</ul>
											</li>
										</c:forEach>

										<form action="/hello/addEventItem" method="post">
											<div class="form-group">
												<input class="form-control" placeholder="name" name="name"
													type="text" autofocus />
											</div>
											<div class="form-group">
												<input class="form-control" placeholder="price" name="price"
													type="text" />
											</div>
											<input type="hidden" name="eventId" value="${event.id}" /> <input
												type="submit" value="Add Product" />
										</form>
									</div>
									<div class="modal-footer"></div>
								</div>
							</div>
						</div>
						<!-------------------------------------------------------------------------------------->

						
						<p><br>
							<a class="btn btn-success btn-cons"
								href="/hello/addEventDetail/${event.id}">Finish and Save</a>
						</p>

					</div>



				</div>
			</div>
		</div>
		<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->

	<!-- jQuery -->
	<script src="../resources/contains/vendor/jquery/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script
		src="../resources/contains/vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="../resources/contains/vendor/metisMenu/metisMenu.min.js"></script>

	<!-- Morris Charts JavaScript -->
	<script src="../resources/contains/vendor/raphael/raphael.min.js"></script>
	<script src="../resources/contains/vendor/morrisjs/morris.min.js"></script>
	<script src="../resources/contains/data/morris-data.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="../resources/contains/dist/js/sb-admin-2.js"></script>


</body>

</html>