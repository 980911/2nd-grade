<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! String str = "JSP Web Programming!"; %>
<%! int total = 0; %>
<%! public int sum(){
	int result = 0;
	for(int i =1; i <= 10; i++){
		result = result + i;
	}
	return result;
}
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>선언부와 표현식 예제</title>
</head>
<body>
	<%= str %><br>
	<%= total %><br>
	<%= "1부터 10까지의 합은 " + sum() + " 입니다" %><p>
	<%= true %><br>
	<%= new char[] {'a', 'b', 'c'} %><br>
	<%= new java.util.Date() %><br>
</body>
</html>