<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<title>Add Customer</title>
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

<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/add-customer-style.css" />
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



	<div id="container">
		<h3 style="margin-left: 40%; padding: 5px;">Save Customer</h3>

		<form:form action="saveCustomer" modelAttribute="customer"
			method="POST">
			<center>
				<!-- need to associate this data with customer id  -->
				<form:hidden path="id" />

				<table>

					<tbody>
						<tr>
							<td><label>First Name:</label></td>
							<td><form:input path="firstName" /></td>
						</tr>

						<tr>
							<td><label>Last Name:</label></td>
							<td><form:input path="lastName" /></td>
						</tr>

						<tr>
							<td><label>Mobile No. :</label></td>
							<td><form:input path="mobileNumber" /></td>
						</tr>

						<tr>
							<td><label>Email:</label></td>
							<td><form:input path="email" /></td>
						</tr>

						<tr>
							<td><label></label></td>
							<td><input class="save" type="submit" value="Save" /> <!-- Returning to list page  -->
								<input class="save" type="button" value="Back"
								onClick="window.location.href='${pageContext.request.contextPath}/customer/list' ;return false;" />
							</td>
						</tr>
					</tbody>
				</table>
		</form:form>
		</center>


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
</body>

</html>