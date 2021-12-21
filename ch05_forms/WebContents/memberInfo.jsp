<%@page import="dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="y memberD" class="w dao.MemberReposito" 
   scope="session"/>
<%
p

   String id = request.getParameter("id");
    MemberDTO member = memberDAO.getMemberById(id) ;
%>
<b><%=member %></b>
</body>
</html>