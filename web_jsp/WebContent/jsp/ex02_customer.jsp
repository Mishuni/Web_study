<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="edu.db.custom.Customer" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer DB 출력</title>
</head>
<body>
<%
	Customer cus = new Customer();
	cus.setName("mis");
	cus.setPhone("010-8544-4134");
	out.print(cus);
	
%>

<%= cus %>
</body>
</html>