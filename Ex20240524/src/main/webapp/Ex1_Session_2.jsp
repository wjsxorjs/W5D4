<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ex1_Session_2</title>
</head>
<body>
<%
	// 별도로 전달되는 name이라는 파라미터 받기
	String name = request.getParameter("name");
%>
	<h2><%=name%></h2>
</body>
</html>