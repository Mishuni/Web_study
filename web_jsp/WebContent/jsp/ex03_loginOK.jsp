<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<%
// 지금 하는 거는 moder1 방식 
// HTML 파일에 java 코드(<%)가 섞여 있는 방식

// model2 방식은 이런 java코드는 selvlet으로 보내 놓는 방식
// model2  (= MVC)
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pass = request.getParameter("pwd");
	
	// 데이터 여러 개 받아오기
	//String[] hobbies = request.getParameterValues("hobby");
	Map map = request.getParameterMap();
	
	String[] hobbies = (String[]) map.get("hobby");
//	out.print(id+","+pass);
	
%>

<%= "당신의 아이디: " + id %><br>
<%= "당신의 비밀번호: " + pass %><br>
<%
	if(hobbies != null){
		for(int i=0; i<hobbies.length; ++i){
			out.print("hobby"+(i+1)+": "); 
			out.print(hobbies[i]+"\n"); 
		}
	}
%>


</body>
</html>