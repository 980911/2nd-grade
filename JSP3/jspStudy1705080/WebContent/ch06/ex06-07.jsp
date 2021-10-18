<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" ">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>유효성검사</title>
<script language="JavaScript">
   function In_Check() {
	if (document.login.id.value == "") {
		alert("아이디(ID)를 입력하세요!!!");
		return;
	}
	if (document.login.pw.value == "") {
		alert("비밀번호를 입력하세요!!!");
		return;
	}
	document.login.submit();
   }
</script>
</head>
<body>
   <center><h4> 로그인 입력 화면 </h4>
   <form method="post" action="ex06-02.jsp" name="login">
   <table border="1" cellspacing="1">
      <tr>
	  <td>아 이 디 : </td>
         <td><input type="text" name="id" size=15></td>
      </tr>
      <tr>
	  <td>비밀번호 : </td>
	  <td><input type="password" name="pw" size=15></td>
      </tr>
      <tr> 
         <td colspan="2" align="center"> 
           <input type="button" value="로그인" OnClick="In_Check()">
	    <input type="reset" value="취   소">
	  </td>
      </tr>
   </table>
   </form></center>
</body>
</html>
