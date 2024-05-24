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
	// 세션으로부터 "u_name"이라는 명칭으로 저장되어있는 값(속성) 삭제
	session.removeAttribute("u_name");

	// 별도로 전달되는 name이라는 파라미터 받기
	String name = request.getParameter("name");
%>
	<h2><%=name%>님 안녕히 가세요!</h2>
	[<a href="Ex1_Session_3.jsp">다음페이지</a>]
</body>
</html>