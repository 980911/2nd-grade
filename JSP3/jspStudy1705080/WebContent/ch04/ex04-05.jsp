<%-- ---------------------------------------- --%>
<%-- 프로그램명 : ex04-05.jsp  				  --%>
<%-- 작성일     : 2014/03/23				  --%>
<%-- 작성자     : Cho, Haengnam  			  --%>
<%-- ---------------------------------------- --%>




<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.util.Date, java.text.SimpleDateFormat"  %>
    
<%
Date d = new Date();
SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM/dd a hh:mm:ss");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP 주석 예제</title>
</head>
<body>
<%-- 날짜와 시간을 출력 --%>
	Today is : <%= d %><p>
	오늘은  : <%= sf.format(d) %> 입니다.
	</body>
</html>