<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta http-equiv="X-UA-Compatible" content="ie=edge" />
	
	<title> </title>
	<style type="text/css">
	form {
		width : 200px;
		border : 1px solid black;
		padding : 30px 30px ;
		background-color: red;
		color: white;
	}
	form input {
		margin : 10px;
	}
	form .btn{
		width : 55px;
	}
	form #submit{
		position : relative;
		left : 20px;
		margin-left: 5px;
	}
	form #cancle{
		position : relative;
		left : 10px;
	}
	h1{
		text-align: center;
	
	}
	
	
	</style>
</head>
<body>
<h1>Login</h1><hr><br>
	<form action="ex03_loginOK.jsp" method="get">
	<b>ID</b> :<input type ="text" name="id">
	<br>
	<b>Pwd</b>:<input type="password" name="pwd"><br>
	<b>Hobby</b>:<br>
	<input type="checkbox" name="hobby" value="baseball">baseball<br>
	<input type="checkbox" name="hobby" value="soccer">soccer<br>
	<input type="checkbox" name="hobby" value="basketball">basketball<br>
	<input type="submit" class="btn" id="submit" value="login" >
	<input type="reset" class="btn" id="cancle" value="cancle" >
	
	</form>
</body>
</html>