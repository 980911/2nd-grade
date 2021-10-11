<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>background{background-color:yellow;}
         </style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>5장 연습문제</title>
</head>
<body>   
   <h4>session 내장객체 예제 퀴즈(2)</h4>
   이름 : 
   <%=session.getAttribute("id") %><br>
   전화번호 : 
   <%=session.getAttribute("num") %><br>
</body>
</html>