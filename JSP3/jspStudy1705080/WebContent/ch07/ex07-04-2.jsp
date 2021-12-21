
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java"
         import="java.sql.*" %>
<% request.setCharacterEncoding("UTF-8");%>
<%
    String dept_id = request.getParameter("dept_id");
    String url = "jdbc:oracle:thin:@oracle12.cwdeh862c8nr.ap-northeast-2.rds.amazonaws.com:15211:ORCL";

    String sql = "SELECT * FROM Department WHERE Dept_ID = ?";

    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection(url, "y1905096", "pass1905096");
    PreparedStatement pstmt = con.prepareStatement(sql);
    pstmt.setString(1, dept_id);

    ResultSet rs = pstmt.executeQuery();
    if (rs.next()) {
        String dept_name = rs.getString(2);
        String dept_tel = rs.getString(3);

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
    <h4>학과명 삭제 화면</h4>
    <form action="ex07-04-1.jsp" method="post" name="deptform">
        <table border="1" cellspacing="1">
            <tr>
                <td>학과코드 :</td>
                <td><%=dept_id%> <input type="hidden" name="dept_id" value="<%=dept_id%>"></td>
            </tr>
            <tr>
                <td>학 과 명 :</td>
                <td><%=dept_name%> <input type="hidden" name="dept_name" value="<%=dept_name%>"></td>
            </tr>
            <tr>
                <td>전화번호 :</td>
                <td><%=dept_tel%> <input type="hidden" name="dept_tel" value="<%=dept_tel%>"></td>
            </tr>
            <tr align="center">
                <td colspan="2">
                    <input type="submit" value="정말삭제하기" name="confirm">
                    <input type="button" value="되돌아가기" onclick="javascript:history.back()">
                </td>
            </tr>
        </table>
    </form>
</center>
</body>
</html>
<%

} else {
        out.println("<h3>학과코드가 존재하지 않습니다.</h3>");
}
%>
