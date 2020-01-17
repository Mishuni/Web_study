<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL core 라이브러리 사용 예제</title>
</head>
<body>
<%
	// java code - jsp
	String str = "JSTL 테스트 입니다.";
	out.print("<h1>"+str+"</h1><br>");
%>

<p style="color:gray; width:200px; border:3px dotted lightgreen;">
JSTL core 라이브러리 사용 예제<br>
<c:set var = "msg" value = "JSTL MSG 입니다." />
<b><c:out value ="${msg}" /></b><br>
</p>

<c:set var = "name" value="Miseon" />
<h2 style="color:red; width:200px; border:3px dotted lightgreen;">
<c:out value="${name} " /></h2><br>

<hr>
<c:set var ="num">1000</c:set>
<c:out value="${num} " /><font color="red" >원 입니다.</font>
<hr>

<c:catch var="e">
 <%= 10/0 %>
</c:catch>
<h3> &lt;c:catch&gt;로 잡아낸 오류:
<c:out value="${e}"/>
</h3>


</body>
</html>
