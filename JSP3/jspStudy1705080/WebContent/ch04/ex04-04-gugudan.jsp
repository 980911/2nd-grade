<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>스크립트릿을 이용한 구구단</title>
<style>
	#a{
	font-weight: bold;
	}
	table{
	background-color: yellow;
	text-align: center;
	}
</style>
</head>
<body>
<center>
   <h4>스크립트릿을 이용한 구구단</h4>
   <table border="1" cellspacing="2">
      <%
      for(int n=2; n<10; n++){
         %>
         <td id="a">
         <% out.println(n+"단");%>
         </td>
         <% }%>
   <%
      int i,j,k;
      for(i=1; i<10; i++){
         %>      
      <tr>
      <%
      for(j=2;j<10;j++){
         k=i*j;
         %>
         <td>
         <%
         out.println(j+" * "+i+" = "+k);
         %>
         </td>
         <%
      }
      out.println("<p>");
         %>
         </tr>
         
      <%} %>   
   </table></center>
</body>

</html>