<%@ page  language="java" contentType="text/html; charset=UTF-8" 
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>삭제폼</title>
    <script>
        function ID_Check() {
            if (document.idinput.dept_id.value === "") {
                alert("삭제할 코드를 입력하세요");
                return 0;
            }
            document.idinput.submit();
        }
    </script>
</head>
<body>
<center>
    <h4>삭제할 학과코드를 입력하세요</h4>
		 <!-- <form action="app11-04-1.jsp" method="post" name="idinput"> -->
   	<form action="app11-04-2.jsp" method="post" name="idinput">
        <table width="200" border="1" cellspacing="0" cellpadding="5">
            <tr>
                <td align="center">학과코드</td>
                <td><input type="text" name="dept_id" size="10"></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="button" onclick="ID_Check()" value="삭  제" name="delete">
                    <input type="reset" value="취  소">
                </td>
            </tr>
        </table>
    </form>
</center>

</body>
</html>
