<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="calc.jsp">
		<input name="num1"><br>
			<select name="op">
				<option value="+">+</option>
				<option value="-">+-</option>
				<option value="*">*</option>
			</select>
		<input name="num2"><br>
		<input type="submit" value="계산">
	</form>
</body>
</html>