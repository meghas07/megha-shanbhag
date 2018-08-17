<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="MyFiles.Account"%>
<%@ page import="MyFiles.BankStatement"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bank Statement</title>
</head>
<body>
	<%
		Account account = new Account();
		System.out.println(session.getAttribute("accountNumber"));
		long AccountNum = (Long) session.getAttribute("accountNumber");
		System.out.println(AccountNum);
		account = BankStatement.bankStmt(AccountNum);
		out.println(account.getAccountNumber());
		out.println(account.getCustomerId());
		out.println(account.getBalance());
		out.println(account.getAccountType());
	%>
	
</body>
</html>