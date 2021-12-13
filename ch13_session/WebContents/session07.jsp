<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>----- 세션 유효시간 변경 전 -----</h4>
	<%
		int time = session.getMaxInactiveInterval() / 60;
		out.print("세션 유효시간 : " + time + "분<br>");
	%>
	<h4>----- 세션 유효시간 변경 후 -----</h4>
	<%
		session.setMaxInactiveInterval(5*60); //초단위
	%>
	<%
		time = session.getMaxInactiveInterval() / 60;
		out.print("세션 유효시간 : " + time + "분<br>");
	%>
</body>
</html>