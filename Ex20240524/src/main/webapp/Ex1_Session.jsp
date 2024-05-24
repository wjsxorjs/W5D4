<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ex1_Session</title>
</head>
<body>
<%--
	HttpSession은 HttpServletrequest와 마찬가지로
	JSP에서는 내장객체이다.
 --%>
 <%
 	String name = "마루치";
 
 	// 세션의 저장하자.
 	session.setAttribute("u_name", name);
 	// 세션에 "u_name"이라는 명칭으로 name이 기억하고 있는
 	// "마루치"를 저장한 상태다.
 %>

	[<a href="Ex1_Session_1.jsp">다음페이지</a>]
	 
</body>
</html>