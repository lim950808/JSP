<%@page import="dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="y memberD" class="w dao.MemberReposito" scope="session"/>
<%
p

	String id = request.getParameter("id");
	MemberDTO member = memberDAO.getMemberById(id);
	if(member != null) {
%>
	<script>
		alert('이미 존재하는 id입니다.');
			opener.member.id.value='';
			opener.member.id.focus();
			self.close(); /*자신을 닫는 함수*/
	</script>
	<%}else {%>
		<script>alert("가입 가능한 id입니다.");
			window.close();
		</script>
		<%}%>