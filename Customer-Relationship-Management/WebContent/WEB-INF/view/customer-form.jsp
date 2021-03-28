<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<title>Add Customer</title>

<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css" />

<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/add-customer-style.css" />
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<h2>CRM - Customer Relationship Manager</h2>
		</div>
	</div>


	<div id="container">
		<h3>Save Customer</h3>

		<form:form action="saveCustomer" modelAttribute="customer"
			method="POST">

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
						<td><label>Mobile No. : </label></td>
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


		<div style=""></div>
		<p>
	</div>


</body>

</html>