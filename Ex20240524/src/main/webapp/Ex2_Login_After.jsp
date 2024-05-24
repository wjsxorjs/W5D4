<%@page import="mybatis.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.name{
	font-weight: bold;
	color: #00bfff;
}
</style>
</head>
<body>
<%
 	Object obj = session.getAttribute("mvo");
	// MemberVO mvo = (MemberVO) session.getAttribute("mvo");
	if(obj != null){
		MemberVO mvo = (MemberVO) obj;
		String name = mvo.getM_name();
		%>
		<h2> <span class="name"><%=name %></span>님 환영합니다.</h2>
		<button type="button" onclick="logout()">로그아웃</button>
		<%
	} else {
		%>
		<h2>잘못된 접근입니다.</h2>
		<button type="button" onclick="javascript:location.href='Ex2_Login.jsp'">로그인 화면</button>
		<%
	}
%>
<script>
	function logout(){
		<% 
		session.removeAttribute("mvo");
		%>
		location.href="Ex2_Login.jsp";
	}
</script>
</body>
</html>