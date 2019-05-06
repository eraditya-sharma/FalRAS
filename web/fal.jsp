<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%
String id = request.getParameter("ltid");
String slot = request.getParameter("slot");
String driver = "com.mysql.jdbc.Driver";
String driverName = "com.mysql.jdbc.Driver";

String url = "jdbc:mysql://localhost:3306/faras";

String user = "root";

String dbpsw = "root";

try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection con = null;
Statement statement = null;
ResultSet resultSet = null;
PreparedStatement ps = null;
%>
<!DOCTYPE html>
<html>
<body>

<h1>Retrieved data from database</h1>
<table border="1">
<tr>

<td>Teacher_Lecture_ID</td>


</tr>
<%
try{
con = DriverManager.getConnection(url, user, dbpsw);
statement=con.createStatement();
String sql ="select * from lcmon where ltid not like ? and slot7 like 'FREE'";
ps = con.prepareStatement(sql);
ps.setString(1, id);
resultSet = ps.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("ltid") %></td>
</tr>
<%
}
con.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>