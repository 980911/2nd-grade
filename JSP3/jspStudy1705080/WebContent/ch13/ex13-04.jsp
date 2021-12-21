<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>성별과 과목선택 입력화면</title>
</head>
<body>
<h4>성별과 좋아하는 과목 조사</h4>
<form action="ex13-04-1.jsp" method="post">
    1. 성별을 선택 하세요.[Radio 버튼] <br>
    <input type="radio" name=s1 value="남자" checked>남자
    <input type="radio" name=s1 value="여자">여자 <p>

    2. 좋아하는 과목을 선택하세요. <br>
    <input type="checkbox" name=s2 value="SQL응용">SQL응용 <br>
    <input type="checkbox" name=s2 value="DB개발도구">DB개발도구 <br>
    <input type="checkbox" name=s2 value="JSP">JSP <br>
    <input type="checkbox" name=s2 value="오라클실무">오라클실무 <br>
    <input type="checkbox" name=s2 value="ERP구축">ERP구축 <br>
    <input type="checkbox" name=s2 value="JSP프로그래밍">JSP프로그래밍 <br>
    <input type="checkbox" name=s2 value="교육학개론">교육학개론 <br>
    <br>
    <input type="submit" value="확인">
    <input type="reset" value="취소">
</form>
</body>
</html>