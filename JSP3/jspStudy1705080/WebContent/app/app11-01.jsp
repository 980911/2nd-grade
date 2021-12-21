<%@ page contentType="text/html; charset=UTF-8" 
		 pageEncoding="UTF-8"
         import="java.sql.*, javax.sql.*, javax.naming.*" %>
<%
    int i = 0;

    String sql = "SELECT * FROM department";
    try {
        Context init = new InitialContext();
        DataSource ds = (DataSource) init.lookup("java:/comp/env/jdbc/OracleDB");
        Connection connection = ds.getConnection();
        Statement statement = connection.createStatement();

        ResultSet resultSet = statement.executeQuery(sql);
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Title</title>
</head>
<body>
<center>
    <h4>[[Department 테이블]]</h4>
    <table border="1" cellspacing="1">
        <tr>
            <th>순번</th>
            <th>학과코드</th>
            <th>학 과 명</th>
            <th>전화번호</th>
        </tr>
        <%
            while (resultSet.next()) {
        %>
        <tr>
            <td><%=++i%>
            </td>
            <td><%=resultSet.getString(1)%>
            </td>
            <td><%=resultSet.getString(2)%>
            </td>
            <td><%=resultSet.getString(3)%>
            </td>
        </tr>
        <%
            }
            resultSet.close();
            statement.close();
            connection.close();
        %>
     
        <%
        } catch (SQLException e) {
            e.printStackTrace();
        %>
        <h4>에러가 발생했군요. 다시 확인해 보세요!!!</h4>
        <%
            }
        %>
    </table>
</center>

</body>
</html>
