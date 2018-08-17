<%@ page import="MyFiles.CustomerCreator" %>
<%@ page import="MyFiles.Customer" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Create Customer</title>
	</head>

	<body>
 		<form action="bankAccount.jsp" method="post">
		
			<label for="firstname">First Name:</label>
				<input type="text" placeholder="Enter first name"  name="firstname" required>
		
			<label for="lastname">Last Name:</label>
				<input type="text" placeholder="Enter last name" name="lastname" required>
		
			<label for="phonenumber">PhoneNumber:</label>
				<input type="text" placeholder="Enter phone number(+91)"  name="phonenum" required><br/>
		
			<label for="email">Email Id:</label>
				<input type="text" placeholder="Enter email id" name="email"  required>
			
			<label for="password">Password:</label>
				<input type="password" placeholder="Enter password" name="password"  required>
					
			<label for="dateofbirth">Date Of Birth:</label>
				<input type="text" placeholder="Enter date of birth yyyy-mm-dd" name="dob" required>
			
			<input type="submit" value="submit_1" name="submit_button">
			<input type="reset">
 
		</form>
		
	</body>
</html>


	
	
	