<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*, java.lang.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sine function table</title>
</head>
<body>
	<h1 align = "center">sine function</h1>
	<table border = "1" align ="center">
	<%! int angles[] = {0,30,60,90}; %><th>Angle</th>
	<th>Sine</th>
	<%
	for (int i=0; i<4; ++i){
	%>
	<tr>
	<td><%=angles[i]%></td>
	<td><%=Math.sin(Math.toRadians(angles[i])) %></td>
	</tr>
	<% } %>
	</table>
</body>
</html>