<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.util.Date, java.text.SimpleDateFormat" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Session 내장객체 예제(2)</title>
</head>
<body>
</head> 
<body> 
<h4> Session 내장객체 예제(2) </h4> 
당신의 세션 ID는
<%= session.getAttribute("id") %> 입니다.<br>
<%-- Start session 생성시간을 확인하는 코드20211005 --%>
<%
Date d = new Date();
SimpleDateFormat sf = new SimpleDateFormat("yyyy/mm/dd a hh:mm:ss");
d.setTime(session.getCreationTime());
%>
세션 생성시간 : <%=session.getCreationTime() %><br>
세션 생성시간 : <%= sf.format(d) %>
<%-- End session 생성시간을 확인하는 코드 --%>
</body>
</html>