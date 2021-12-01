<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar</title>
</head>
<body>
<%  
	int year;
	int month;
	
	Calendar today = Calendar.getInstance();
	Calendar cal = new GregorianCalendar();
	year = (request.getParameter("year")==null) ? today.get(Calendar.YEAR) : Integer.parseInt(request.getParameter("year").trim());
	month = (request.getParameter("month")==null) ? today.get(Calendar.MONTH)+1 : Integer.parseInt(request.getParameter("month").trim());
	
	if (month <= 0){
		month = 12;
	 	year = year - 1;
	}else if (month>=13){
		month = 1;
	 	year = year + 1;
	}cal.set(Calendar.YEAR, year);
	 cal.set(Calendar.MONTH, (month-1));
	 cal.set(Calendar.DATE, 1);
%>

<table bgcolor="black">
<tr >
	<td align="center" bgcolor='skyblue' height='18' colspan="7">
		<font color='black' size='2'><%=cal.get(Calendar.YEAR)%>년 <%=(cal.get(Calendar.MONTH)+1)%>월</font>
	</td>
</tr>
 
<tr align="center" bgcolor="orange">
	<td>일</td><td>월</td><td>화</td><td>수</td><td>목</td><td>금</td><td>토</td>
</tr>

<%  
	cal.set(year, month-1, 1);
	int dayOfWeek = cal.get(Calendar.DAY_OF_WEEK);
%>
	<tr align="center" bgcolor="yellow">
<%
	for(int i=1;i<dayOfWeek;i++){ %>
		<td align="center" bgcolor="white"></td>
<% }
	for(int i=1;i<=cal.getActualMaximum(Calendar.DAY_OF_MONTH);i++){ %>
		<td>
  			<a<%=cal.get(Calendar.YEAR)%>&month=<%=((cal.get(Calendar.MONTH)+1))%>&day=<%=i %>'><%=i %></a>
  		</td><%
            if((dayOfWeek-1+i)%7==0){
                %></tr><tr align="center" bgcolor="yellow">
   			<% }
  	}%> 
 </tr>
</table>
</body>
</html>