<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>

<html>

<head>
<title>List Customers</title>

<!-- reference our style sheet -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns"
	crossorigin="anonymous"></script>

<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css" />

</head>

<body>


	<div style="text-color: black;">

		<nav class="navbar navbar-expand-lg navbar navbar-light"
			style="background-color: #e3f2fd;">
			<a class="navbar-brand"
				href="/Customer-Relationship-Management/index.jsp">Customer
				Relationship Management</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ml-auto">


					<li class="nav-item active"><a class="nav-link"
						href="/Customer-Relationship-Management/index.jsp">Home <span
							class="sr-only">(current)</span></a></li>

					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/customer/showFormForAdd">Add
							Customer</a></li>

						<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/customer/contact">Contact</a></li>

					<li class="nav-item"><a class="nav-link"
						href="/customer/about">About</a></li>


				</ul>

				<form class="form-inline my-2 my-lg-0">
					<input class="form-control mr-sm-2" type="search"
						placeholder="Search By Name" aria-label="Search">
					<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search
						Customer</button>
				</form>
			</div>
		</nav>



	</div>





	<div id="wrapper">
		<div id="header">
			<h2 style="text-align: center; color: black;">Customer List</h2>
		</div>
	</div>

	<div id="container">

		<div id="content">


			<!--  add our html table here -->
			<table style="overflow-x: auto;">
				<tr>

					<th>First Name</th>
					<th>Last Name</th>
					<th>Mobile Number</th>
					<th>Email</th>
					<th>Customer Id</th>
					<th>Action</th>

				</tr>

				<!-- loop over and print our customers -->
				<c:forEach var="tempCustomer" items="${customers}">

					<!-- construct the update link with customer id -->
					<c:url var="updateLink" value="/customer/showFormForUpdate">
						<c:param name="customerId" value="${tempCustomer.id}" />
					</c:url>

					<!-- construct the delete link with customer id -->
					<c:url var="deleteLink" value="/customer/deleteCustomer">
						<c:param name="customerId" value="${tempCustomer.id}" />
					</c:url>
					<tr>

						<td>${tempCustomer.firstName}</td>
						<td>${tempCustomer.lastName}</td>
						<td>${tempCustomer.mobileNumber}</td>
						<td>${tempCustomer.email}</td>
						<td>${tempCustomer.id}</td>
						<td><a href="${updateLink}">Update</a>|<a
							href="${deleteLink}">Delete</a></td>
					</tr>

				</c:forEach>

			</table>

		</div>

	</div>
	<div>
		<br>
	</div>

	<!-- Footer -->
	<footer class="page-footer font-small blue pt-2"
		style="background: light-grey;">


		<!-- Copyright -->
		<div class="footer-copyright text-center py-3">
			© 2020-2021 Copyright: <a href="https://mdbootstrap.com/">CRM</a>
		</div>
		<!-- Copyright -->

	</footer>
	<!-- Footer -->
</body>

</html>









