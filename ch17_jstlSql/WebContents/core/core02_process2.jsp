<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL</title>
</head>
<body>
	<%
		String number = request.getParameter("number");
	%>
	<%-- 파라미터는 String, set에 의해 int타입으로 변환 --%>
	<c:set var="number" value="<%=number %>"/>
	
	<c:if test="${param.number %2==0}">
		${number}는 짝수 입니다.
	</c:if>
	<c:if test="${param.number %2!=0}">
		${number}는 홀수 입니다.
	</c:if>
	
</body>
</html>