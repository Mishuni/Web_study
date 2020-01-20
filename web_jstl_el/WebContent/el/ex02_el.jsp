<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% session.setAttribute("msg", "Session Test 54645645"); %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02_el.jsp EL Test</title>
</head>
<body>
	<form action="ex02_result.jsp">

		<table border="1">

			<tr>
				<td>search:</td>
				<td><input type="text" name="search" placeholder="put"></td>
			</tr>

			<tr>
				<td>name:</td>
				<td><input type="text" name="name" placeholder="put Name"></td>
			</tr>

			<tr>
				<td>age:</td>
				<td><input type="number" name="age" placeholder="put Age"></td>
			</tr>
			<tr>
			<td colspan="2" align="center"><input type="submit" value="submit"></td></tr>
		</table>

	</form>
</body>
</html>