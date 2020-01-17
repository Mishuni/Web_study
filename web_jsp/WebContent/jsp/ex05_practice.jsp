<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice</title>
</head>
<body>
	<%
		for (int i = 1; i < 11; ++i) {
			out.print((int)(Math.pow(i,2)) + " ");
		}
	%>
	<hr>
<%
	String[] friuts = {"apple","grape","orange","persimmon"};
	for(int i=0; i<friuts.length; ++i){
		out.print("<font style='background-color : red; color: white'>Element"+(i+1)+": "+friuts[i]+"</font><br><br>");

	}

%>

<form action="../Calculator">
<hr>
Choose operator<br>
<input type="radio" name="operator" value="plus">PLUS<br>
<input type="radio" name="operator" value="minus">MINUS<br>
<input type="radio" name="operator" value="multify">MULTIFY<br><br>
First operand : <input type="number" name="op1" required><br>
Second operand : <input type="number" name="op2" required><br>
<input type="submit" name="submit" value="Send Query">
<hr>
</form>
</body>
</html>