<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>배열로 전송된값 처리</title>
</head>
<body>
   <h4>당신이 보고싶은 영화제목으로 선택한 것은</h4>
   <%String[] movie=request.getParameterValues("movie");
      for(int i=0; i<movie.length; i++){
      %>
      <%= i+1 %>.
      <%= movie[i] %><br>
      <%} %>
      <br>
      당신이 선택한 영화의 개수는 <%=movie.length %> 이고<br>
      <%
      if(movie.length>5){
    	  out.println("영화광입니다");
      }
      else if(movie.length>=3){
      	  out.println("마니아입니다");
      }
      else{
     	 out.println("영화 보는 것을 좋아합니다");
      }
      %>
      
</body>
</html>