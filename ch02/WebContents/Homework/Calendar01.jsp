<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	Calendar cal = Calendar.getInstance();
    
    	int y = 2021;
    	int m = 11;
    	
    	cal.set(y, m-1, 1);
    	
    	int year = cal.get(Calendar.YEAR);
    	int month = cal.get(Calendar.MONTH)+1;
    	
    	int week = cal.get(Calendar.DAY_OF_WEEK);
    	int endDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar</title>
</head>
<body>
	<%=year %>년
	<%=month %>월
	
	<table border = "10">
		<tr>
			<td>일</td>
			<td>월</td>
			<td>화</td>
			<td>수</td>
			<td>목</td>
			<td>금</td>
			<td>토</td>
		</tr>
		<tr>
			<%
				for(int i=1;i<week;i++) { %>
					<td>&nbsp;</td>
			<%	}
			%>
			<%
				for(int j=1;j<endDay;j++) {
					week++;
					if(week%7 == 2) { %>
		</tr>
		<tr>
			<%		} %><td><%=j%></td>
			<%	}
			%>
			<%
				while(endDay<35){
					endDay++;
					out.println("<td></td>");
				}
			%>
		</tr>
	</table>
</body>
</html>