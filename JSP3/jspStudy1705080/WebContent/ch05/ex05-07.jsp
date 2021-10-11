<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    errorPage = "error.jsp"
    %>
    <% String alpha[] = {"A", "B", "C"}; %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>Exception 객체 예제</h4>
	1번째 배열 : <%= alpha[3] %><%--배열의 범위를 벗어날 경우 오류발생 --%>
</body>
</html>