<%-- 
    Document   : index
    Created on : 29 Apr, 2019, 2:34:35 AM
    Author     : Adishi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose `Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Login | FaRAS</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            body{
    margin: 0;
    padding: 0;
    background: #092756;
     background: -moz-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%),-moz-linear-gradient(top,  rgba(57,173,219,.25) 0%, rgba(42,60,87,.4) 100%), -moz-linear-gradient(-45deg,  #670d10 0%, #092756 100%);
    background: -o-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%), -o-linear-gradient(top,  rgba(57,173,219,.25) 0%,rgba(42,60,87,.4) 100%), -o-linear-gradient(-45deg,  #670d10 0%,#092756 100%);
    background-size: cover;
    background-position: center;
    font-family: sans-serif;
}

.loginbox{
    width: 320px;
    height: 420px;
    background: #000;
    color: #fff;
    top: 75%;
    left: 50%;
    right: 50%;
    bottom: 100%;
    position:absolute;
    transform: translate(-50%,-50%);
    box-sizing: border-box;
    padding: 70px 40px;
    margin-bottom: 10px;
    margin-top: 10px;
    border-radius: 5px;
}
.heading{
   color: white;
   font:Cambria;
   background-color: black;
   padding:5px;
   padding-bottom:5px;
   text-align: center;
}
 .footer{
  background-color: #000;
  font-size: 13px;
  font-weight:bold;
  text-align:center;
      padding: 10px;
  color: white;
         position:fixed;
      bottom: 0;
         width: 100%;
  
  }
.avatar{
    width: 100px;
    height: 100px;
    border-radius: 50%;
    position: absolute;
    top: -50px;
    left: calc(50% - 50px);
}

h1{
    margin: 0;
    padding: 0 0 20px;
    text-align: center;
    font-size: 22px;
}

.loginbox p{
    margin: 0;
    padding: 0;
    font-weight: bold;
}

.loginbox input{
    width: 100%;
    margin-bottom: 20px;
}

.loginbox input[type="text"], input[type="password"]
{
    border: none;
    border-bottom: 1px solid #fff;
    background: transparent;
    outline: none;
    height: 40px;
    color: #fff;
    font-size: 16px;
}
.loginbox input[type="submit"]
{
    border: none;
    outline: none;
    height: 40px;
    background: #fb2525;
    color: #fff;
    font-size: 18px;
    border-radius: 20px;
}
.loginbox input[type="submit"]:hover
{
    cursor: pointer;
    background: #ffc107;
    color: #000;
}
.loginbox a{
    text-decoration: none;
    font-size: 12px;
    line-height: 20px;
    color: darkgrey;
}

.loginbox a:hover
{
    color: #ffc107;
}
        </style>
    </head>
    <body>
     <header class="heading">
    <img src="C:\Users\Aditya Sharma\Desktop\Enterprise Prog. in Java\FaLRAS\FaRAS logo.png" alt="FaRAS" width=110 height="110" align = "center">
        <h2 align = "center">FaLRAS</h2>
        <h4 align ="center">Faculty Lecture Re-Allocation System</h4>
         </header>
    <div class="loginbox">
    <img src="avatar.png" class="avatar">
        <h1>Login Here</h1>
        <form method ="post" action ="login.jsp">
            <p>Username</p>
            <input type="text" name="uname" placeholder="Enter Username">
            <p>Password</p>
            <input type="password" name="pwd" placeholder="Enter Password">
            <input type="submit" name="sub" value="Login">
        </form>
            <br>
    <br>
    <br>
    <br>
    </div>

    <footer align = "center" class="footer">
            <p>Copyright ©2019 All rights reserved | Developed by Aditya Sharma</p>
</footer>
    </body>
</html>

