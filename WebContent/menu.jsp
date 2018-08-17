<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="MyFiles.Account"%>
<%@ page import="MyFiles.AccountCreator"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Menu</title>
</head>
<body>
	<%
		String strcustomerID = request.getParameter("customerId");
	    System.out.println(strcustomerID+"hi");
		String accountType = request.getParameter("type");

		int customerId = Integer.parseInt(strcustomerID);
		System.out.println(customerId);

		Account account = new Account(customerId, accountType);

		AccountCreator.insertRecord(account);

		session.setAttribute("accountNumber", account.getAccountNumber());
		System.out.println(account.getAccountNumber());
	%>

	<ul>
		<a href="statement.jsp"><li>Generate Bank Statement</li></a>
		<a href="depositMoney.jsp"><li>Deposit Money</li></a>
		<a href="transferMoney.jsp"><li>Transfer Money</li></a>
		<a href="customerDetails.jsp"><li>View Customer Details</li></a>

	</ul>
</body>
</html>