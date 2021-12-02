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
		request.setAttribute("PAGETITLE", "정보보기");
	%>
	<jsp:forward page="/module/template.jsp">
		<jsp:param name="CONTENTPAGE" value="/module/info_view.jsp"/>
	</jsp:forward>
</body>
</html>