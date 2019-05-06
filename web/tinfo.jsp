<%-- 
    Document   : tinfo
    Created on : 29 Apr, 2019, 4:40:15 AM
    Author     : Adishi
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Login</title>

</head>

<body>

<%! String id;%>

<%
Connection con= null;

PreparedStatement ps = null;

ResultSet rs = null;



String driverName = "com.mysql.jdbc.Driver";

String url = "jdbc:mysql://localhost:3306/faras";

String user = "root";

String dbpsw = "root";

String sql = "select * from tinfo where ltid like 'vas' ";
id = request.getParameter("tname");
try{

Class.forName(driverName);

con = DriverManager.getConnection(url, user, dbpsw);

ps = con.prepareStatement(sql);

ps.setString(1, id);
while(rs.next()){
%>
<tr>
<td><%=rs.getString("tid") %></td>
<td><%=rs.getString("ltid")%></td>
<td><%=rs.getString("contactno") %></td>
<td><%=rs.getString("designation") %></td>
<td><%=rs.getString("subjects") %></td>
<td><%=rs.getString("tname") %></td>
</tr>
<%
}
rs.close();

ps.close(); 
}
catch(SQLException sqe)

{

out.println(sqe);

}
}
%>
</body></html>