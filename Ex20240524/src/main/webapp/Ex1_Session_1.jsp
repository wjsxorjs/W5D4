<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ex1_Session_1</title>
</head>
<body>
<%
	// 세션의 getAttribute()메서드는 세션에 저장시 어떤 객체를
	// 저장했는지 몰라서 최상위 객체인 Object를 반환한다. 그래서
	// 저장 시 자료형으로 형변환을 거쳐야 제대로 사용할 수 있다.
	// 개발자는 저장할 때 어떤 자료형으로 저장했는지 알고있다.

	Object obj = session.getAttribute("u_name");
	if(obj != null){
		String name = (String) obj;
		%>
		<%=name %>님, 환영합니다!<br/>
		<button type="button" onclick="logout('<%=name%>')">로그아웃</button>
		<%	
	}	
%>

<script>
	function logout(n){
		location.href="Ex1_Session_2.jsp?name="+n;
	}
</script>
</body>
</html>