<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
 <!DOCTYPE html>
<html>
<head>
	<title>List Customers</title>
	
	<!-- Reference the style sheet -->
	    <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" >
		
</head>
<body>

	<div id = "wrapper">
		
		<div id = "header">
		
			<h2>Customer Relationship Manager</h2>
		
		</div>
		
	</div>
	
	<div id = "container">
	
		<div id = "content">
		
			<!-- Add the button for entering the content -->
			
			<input type = "button" value = "Add customer"
				onClick="window.location.href='showFormForAdd'; return false;"
				class = "add-button"
			/>
		
			<!-- add our html table here -->
			<table>
			
				<tr>
					
					<th>First Name</th>
					
					<th>Last Name</th>
					
					<th>Email</th>
					
				</tr>
				
				<!-- Loop over and print our customers -->
				
				<c:forEach var = "tempCustomer" items = "${customers }">
				
				
					<tr>
					
						<td> ${tempCustomer.firstName } </td>
						<td> ${tempCustomer.lastName } </td>
						<td> ${tempCustomer.email } </td>
					
					</tr>
				
				
				</c:forEach>
			
			</table>
		
		</div>
	
	</div>

</body>
</html> 