<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%
	String course_id = request.getParameter("course_id");
	String url = "jdbc:oracle:thin:@oracle12.cwdeh862c8nr.ap-northeast-2.rds.amazonaws.com:15211:ORCL";

	String sql = "SELECT * FROM Course WHERE Course_ID = ?";

	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection(url, "y1705080", "pass1705080");
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, course_id);

	ResultSet rs = pstmt.executeQuery();
	if (rs.next()) {
		String title = rs.getString(2);
		int c_number = Integer.parseInt(rs.getString(3));
		String professor_id = rs.getString(4);
		int course_fees = Integer.parseInt(rs.getString(5));

		rs.close();
		pstmt.close();
		con.close();
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>삭제폼[2]</title>
</head>
<body>
	<center>
		<h4>개설 과목 삭제 화면</h4>
		<form action="app07-04-1.jsp" method="post" name="courseform">
			<table border="1" cellspacing="1" style="text-align: center">
				<tr>
					<td>과목코드</td>
					<td><%=course_id%> <input type="hidden" name="course_id"
						value="<%=course_id%>"></td>
				</tr>
				<tr>
					<td>과목명</td>
					<td><%=title%></td>
				</tr>
				<tr>
					<td>학점수</td>
					<td><%=c_number%></td>
				</tr>
				<tr>
					<td>담당교수번호</td>
					<td><%=professor_id%></td>
				</tr>
				<tr>
					<td>추가수강료</td>
					<td><%=course_fees%></td>
				</tr>
				<tr align="center">
					<td colspan="2"><input type="submit" value="삭제" name="confirm">
						<input type="button" value="취소"
						onclick="javascript:history.back()"></td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>
<%
	} else {
		out.println("<h3>과목코드가 존재하지 않습니다.</h3>");
	}
%>
