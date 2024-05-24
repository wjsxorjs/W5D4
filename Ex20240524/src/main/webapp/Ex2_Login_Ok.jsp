<%@page import="mybatis.vo.MemberVO"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="mybatis.service.FactoryService"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String mid = request.getParameter("m_id");
	String mpw = request.getParameter("m_pw");
	
	Map<String, String> m_map = new HashMap<>();
	
	m_map.put("mid", mid);
	m_map.put("mpw", mpw);
	
	SqlSession ss = FactoryService.getFactory().openSession();
	
	MemberVO mvo = ss.selectOne("member.login",m_map);
	
	String path = "Ex2_Login_After.jsp";
	if(mvo != null){
		session.setAttribute("mvo", mvo);
	} else{
		// 로그인 실팬한 페이지로 이동하기 위해 준비
		%>alert("아이디 또는 비밀번호가 잘못 되었습니다");<%
		path = "Ex2_Login_Fail.jsp";
	}
	
		response.sendRedirect(path);
	
%>
</body>
</html>