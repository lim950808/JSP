<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
	Connection conn = null;
	try {
		String url = "jdbc:mysql://localhost:3306/WebMarketDB?user=director&password=director";
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(url);
		if(conn != null) {
			out.print("데이터 베이스 연결이 성공했습니다.");
		}
	}catch (Exception e) {
		out.print("데이터베이스 연결이 실패했습니다.<br>");
		out.print("SQLException: " + e.getMessage());
	}finally {
		if(conn != null) conn.close();
	}
%>
</body>
</html>