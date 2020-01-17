<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01_basic.jsp</title>

<script type="text/javascript">
	document.write("javascript print~~");
</script>
</head>
<body>
	<h1>hi</h1>
	<p>tag web browser print</p>
	<%
		String str = "hi!! JSP using web browser print";
		out.print(str);
	%>
	<br><h>
	<%= "expression print: "+str
		//expression (표현식)
	%>
	<!-- jsp 는 웹 브라우저에서 페이지 소스 보기 하면 보이지 않음
	-> 해석기가 서버에 있기 때문에(여기서는 tomcat 서버가 해석)
	-> 내용만 순수 html로 client에 보냄 -->
</body>
</html>