<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- form02으로부터 넘어온 파라미터 출력하기 -->
<% 
	/*request로 넘어온 파라미터의 문자셋 설정*/
	request.setCharacterEncoding("UTF-8");

%>
<jsp:useBean id="memb" class=w scope="session"/>
<jsp:setProperty property = "*" name="member"/>
<b><%=member %></b>

</body>
</html>