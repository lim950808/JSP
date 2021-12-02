<%@page import="java.util.Date"%>
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
	//날짜정보는 이 페이지에서 생성
		Date now = new Date();
	%>
	<%=now %>
	
	<%-- 날짜정보를 printToday.jsp로 전달하도록 처리 --%>
	<%
		/* "now"라는 이름으로 now객체가 object타입으로 형변환 후 저장 */
		request.setAttribute("now", now);
	%>
	
	<%-- printTodya.jsp로 forward 처리 --%>
	<jsp:forward page="printToday.jsp">
	<jsp:param value="<%=now %>" name="now"/>
	</jsp:forward>
</body>
</html>