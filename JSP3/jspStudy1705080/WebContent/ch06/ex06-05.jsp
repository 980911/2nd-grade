<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" ">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>입력 폼[3]</title>
</head>
<body>
   <center><h4> 보고 싶은 영화제목 선택하기 </h4>
   1. 보고 싶은 영화를 선택해 주세요.<br>
      (여러 제목을 선택할 경우에는 Ctrl 키를 사용하세요.) <p>
   <form method=post action=ex06-06quiz.jsp>
      <select name=movie size=4 multiple>
	<option value="설국열차" selected>설국열차
	<option value="레드:더 레전드">레드:더 레전드
	<option value="친구">친구
	<option value="감시자들">감시자들
	<option value="피아니스트">피아니스트 
	<option value="대부">대부 
	<option value="기적">기적 
	<option value="보이스">보이스 
	<option value="그래비티">그래비티
      </select><p>
   <input type=submit value=" 전 송 ">
   <input type=reset  value=" 취 소 ">
   </form></center>
</body>
</html>
