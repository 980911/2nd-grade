<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" ">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>배열로 전송된 값 처리</title>
</head>
<body>
   <h4> 당신이 보고 싶은 영화제목으로 선택한 것은 ?</h4>
<%
   String[] movie=request.getParameterValues("movie");
   for(int i=0; i < movie.length; i++) {
%>
      <%= i+1 %>. 
      <%=movie[i] %><br>
<% } %>
</body>
</html>
