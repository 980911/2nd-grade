<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql. *, javax.sql.*, javax.naming.*" %>
   
 <%
 try{
	 Context init = new InitialContext();
	 DataSource ds = 
			 (DataSource)init.lookup("java:/comp/env/jdbc/OracleDB");
	 Connection con = ds.getConnection();
	 out.println("<h4>데이터베이스 서버에 연결되었습니다.</h4>");
 }catch(Exception e){
	 out.println("<h4>데이터베이스 서버에 연결이 되지 않았습니다.</h4>");
	 e.printStackTrace();
 }
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>