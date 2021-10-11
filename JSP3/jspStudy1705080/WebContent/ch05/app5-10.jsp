<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>5장 연습문제</title>
<style>
	body{color: green; text-align: center;}
	form{display: flex; justify-content: center;}
</style>
</head>
<body>
   <h4>개인정보 입력 화면</h4>
   <h5>이름과 전화번호를 입력하세요 </h5>
   <form method="post">
   <table> 
   <tr>
      <td>이름</td>    
      <td><input type="text"  name="id"></td>
      </tr>
      
      <tr>
      <td>전화번호</td>      
      <td><input type="text" name="num"> </td>
      </tr>
      <tr align="center">
      <td colspan="4">
               <input type="submit" value="전송">
               <input type="reset" value="취소"></td></tr>
      </table></form>
      <%
         String user=" ";
         if(request.getParameter("id")!=null){
            user = request.getParameter("id");
            session.setAttribute("id",user);
         
            user = request.getParameter("num");
            session.setAttribute("num",user);
            response.sendRedirect("app5-11.jsp");}
%>
</body>
</html>