<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="MyFiles.CustomerCreator"%>
<%@ page import="MyFiles.Customer"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String firstName = request.getParameter("firstname");
		String lastName = request.getParameter("lastname");
		String phoneNumber = request.getParameter("phonenum");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String dob = request.getParameter("dob");

		java.sql.Date dateOfBirth;
		dateOfBirth = java.sql.Date.valueOf(dob);

		Customer customer = new Customer(firstName, lastName, phoneNumber, email, password, dateOfBirth);

		int customerId = CustomerCreator.insertRecord(customer);
	%>
	<h4>Your Customer Id is:<%=customerId%></h4>
	
	<form action="menu.jsp" method="post">
		
		 <label for="customerid">Customer Id:</label>
		 	 <input type="text"  name="customerId" >
		
		 <label for="accounttype">Select Account type:</label> 
				<select name="type">
				 	 <option value="none" selected>None</option>
					<option value="savings">Savings</option>
					<option value="current">Current</option>
		  	  </select> 
		
		<input type="submit">
	    <input type="reset">

	</form>
	
</body>
</html>