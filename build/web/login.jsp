<%-- 
    Document   : login
    Created on : 28 Apr, 2019, 9:14:29 PM
    Author     : Adishi
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Login</title>

</head>

<body>

<%! String userdbName;

String userdbPsw;

String dbUsertype;

%>

<%

Connection con= null;

PreparedStatement ps = null;

ResultSet rs = null;



String driverName = "com.mysql.jdbc.Driver";

String url = "jdbc:mysql://localhost:3306/credentials";

String user = "root";

String dbpsw = "root";



String sql = "select * from userinfo where userid=? and password=?";



String userid = request.getParameter("uname");

String password = request.getParameter("pwd");




if((!(userid.equals(null) || userid.equals("")) && !(password.equals(null) || 
password.equals(""))))
{
try{

Class.forName(driverName);

con = DriverManager.getConnection(url, user, dbpsw);

ps = con.prepareStatement(sql);

ps.setString(1, userid);

ps.setString(2, password);

rs = ps.executeQuery();

if(rs.next())

{ 

userdbName = rs.getString("userid");

userdbPsw = rs.getString("password");

if(userid.equals(userdbName) && password.equals(userdbPsw))
{
response.sendRedirect("welcome.jsp"); 

} 

}

else

response.sendRedirect("error.jsp");

rs.close();

ps.close(); 

}

catch(SQLException sqe)

{

out.println(sqe);

} 

}

else

{

%>

<center><p style="color:red">Error In Login</p></center>

<% 

getServletContext().getRequestDispatcher("index.jsp").include(request, 
response);

}

%>

</body>

</html>