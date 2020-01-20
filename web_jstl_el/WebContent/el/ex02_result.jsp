<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix ="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix ="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<% session.setAttribute("msg", "Session Test"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>result page</title>
</head>
<body>
<fmt:requestEncoding value = "UTF-8"/>

	<%-- <%	request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String search = request.getParameter("search");
		int age = Integer.parseInt(request.getParameter("age"));
		out.print(age+"살 ");
		
	%>
	<%=name %>'s keyword is : <%=search %> <br> --%>
	 
	<h3>${sessionScope.msg}</h3>
	<h3>${param['name'] }</h3> 
	<h3>${param['age'] }</h3> 
</body>
</html>