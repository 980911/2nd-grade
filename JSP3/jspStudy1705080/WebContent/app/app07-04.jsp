<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>삭제폼</title>
<script>
	function ID_Check() {
		if (document.id_input.course_id.value === "") {
			alert("삭제할 과목코드를 입력하세요");
			return 0;
		}
		document.id_input.submit();
	}
</script>
</head>
<body>
	<center>
		<h4>삭제할 과목코드를 입력하세요</h4>
		<form action="app07-04-2.jsp" method="post" name="id_input">
			<table width="200" border="1" cellspacing="0" cellpadding="5">
				<tr>
					<td align="center">과목코드</td>
					<td><input type="text" name="course_id" size="10"></td>
				</tr>
				<tr align="center">
					<td colspan="2"><input type="button" onclick="ID_Check()"
						value="삭  제" name="delete"> <input type="reset"
						value="취  소"></td>
				</tr>
			</table>
		</form>
	</center>

</body>
</html>
