<%@page import="java.util.Calendar"%>
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
		/* out.println()은 &nbsp; 한개의 공백이 생김 */
		out.println("Hello!");
		out.newLine();
		out.println("Java Server Pages 입니다.");
	%>
	<hr>
	<%
		out.println("Hello!<br>");
		out.newLine();
		out.println("<br>Java Server Pages 입니다.");
	%>
	<hr>
	<%
		out.print("오늘의 날짜 및 시각: " +"<br>");
		/* Calendar객체로부터 Date객체 얻기 getTime() */
		out.println(Calendar.getInstance().getTime());
	%>
</body>
</html>