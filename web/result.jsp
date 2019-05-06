<%-- 
    Document   : result
    Created on : 29 Apr, 2019, 4:03:30 AM
    Author     : Adishi
--%>

<%-- 
    Document   : falras
    Created on : 29 Apr, 2019, 3:00:03 AM
    Author     : Adishi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Teacher Information Portal | FaLRAS</title>
		<link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:700, 600,500,400,300' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
		<link rel="stylesheet" href="tinfo.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">    
		<script src="https://code.jquery.com/jquery-2.2.0.min.js"></script>
		<script src="https://code.highcharts.com/highcharts.js"></script>
		<script src="https://code.highcharts.com/modules/data.js"></script>
		<script src="main.js"></script>
	<style>* {
	box-sizing: border-box;
}
body {
	margin: 0;
	paddin: 0;
	font-family: 'Source Sans Pro', sans-serif;
	background-color: #d5dae5;
	-webkit-font-smoothing: antialiased;
  	-moz-osx-font-smoothing: grayscale;
}
.header {
	position: absolute;
	width: 100%;
	z-index: 3;
	height: 44px;
	background-color: #fff;
	border-bottom: 3px solid #2d3d51;
}
.footer{
  background-color: #000;
  font-size: 13px;
  font-weight:bold;
  text-align:center;
      padding: 10px;
  color: white;
         position:relative;
      bottom: 0;
         width: 100%;
  
  }
/* logo in header(mobile version) and side-nav (tablet & desktop) */
.logo {
	height: 44px;
	padding: 10px;
    text-align: center;
	font-weight: 700;
    font-size: 13.5px;
}

.header .logo {
	color: #233245;
}
.side-nav .logo {
	background-color: #233245;
	color: #fff;
}
.header .logo {
	float: left;
}
.header .logo {
	height: 44px;
	z-index: 1;
	padding: 10px;
	font-weight: 700;
	color: #233245;
}
.logo  i {
	font-size: 11px;
}
.logo span {
	margin-left: 5px;
	text-transform: uppercase;
}
.nav-trigger {
	position: relative;
	float: right;
	width: 20px;
	height: 44px;
	right: 30px;
	display: block;	
}
.nav-trigger span, .nav-trigger span:before, span:after {
	width: 30px;
	height: 2px;
	background-color: #35475e;
	position: absolute;
}
.nav-trigger span {
	top: 50%;
}
.nav-trigger span:before, .nav-trigger span:after {
	content: '';
}
.nav-trigger span:before {
	top: -6px;
}
.nav-trigger span:after {
	top: 6px;
}
.side-nav {
	position: absolute;
	width: 100%;
	height: 100vh;
	background-color: #35475e;
	z-index: 1;
	display: none;
}
.side-nav.visible {
	display: block;
}
.side-nav ul {
	margin: 0;
	padding: 0;
}
.side-nav ul li {
	padding: 16px 16px;
	border-bottom: 1px solid #3c506a;
	position: relative;
}
.side-nav ul li.active:before {
	content: '';
	position: absolute;
	width: 4px;
	height: 100%;
	top: 0;
	left: 0;
	background-color: #fff;
}
.side-nav ul li a {
	color: #fff;
	display: block;
	text-decoration: none;
}
.side-nav ul li i {
	color: #0497df;
	min-width: 20px;
	text-align: center;
}
.side-nav ul li span:nth-child(2) {
	margin-left: 10px;
	font-size: 11px;
	font-weight: 600;
}
.main-content {
	padding: 40px;
	margin-top: 0;
	padding: 0;
	padding-top: 44px;
	height: 100%;
	overflow: scroll;
}
.main-content .title {
	background-color: #eef1f7;
	border-bottom: 1px solid #b8bec9;
	padding: 10px 20px;
	font-weight: 700;
	color: #000;   
	font-size: 15px;
}
@media screen and (min-width: 600px) {
	.header {
		background-color: #35475e;
		z-index: 1;
	}
	.header .logo {
		display: none;
	}
	.nav-trigger {
		display: none;
	}
	.nav-trigger span, .nav-trigger span:before, span:after {
		background-color: #fff;
	}
	.side-nav {
		display: block;
		width: 70px;
		z-index: 2;
	}
	.side-nav ul li span:nth-child(2) {
		display: none;
	}
	.side-nav .logo i {
		padding-left: 12px;
	}
	.side-nav .logo span {
		display: none;
	}
	.side-nav ul li i {
		font-size: 26px;
	}
	.side-nav ul li a {
		text-align: center;
	}
	.main-content {
		margin-left: 70px;
	}
}
@media screen and (min-width: 800px) {
	.side-nav {
		width: 200px;
	}
	.side-nav ul li span:nth-child(2) {
		display: inline-block;
	}
	.side-nav ul li i {
		font-size: 16px;
	}
	.side-nav ul li a {
		text-align: left;
	}
	.side-nav .logo i {
		padding-left: 0;
	}
	.side-nav .logo span {
		display: inline-block;
	}
	.main-content {
		margin-left: 200px;
	}
}
.loginbox{
    width: 220px;
    height: 320px;
    background: #000;
    color: #fff;
    top: 75%;
    left: 50%;
    right: 50%;
    bottom: 100%;
    position:f;
    transform: translate(-50%,-50%);
    box-sizing: border-box;
    padding: 70px 40px;
    margin-bottom: 10px;
    margin-top: 10px;
    border-radius: 5px;
}
.main {
	display: flex;
	flex-flow: row wrap;
}
.widget {
	flex-basis: 300px;
	flex-grow: 10;
	height: 465px;
	margin: 15px;
	border-radius: 6px;
	background-color: #ffffff;
	position: relative;
}
.widget .title {
	background-color: #eef1f7;
	border-bottom: 1px solid #dfe4ec;
	padding: 10px;
	border-top-left-radius: 6px;
	border-top-right-radius: 6px;
	color: #617085;
	font-weight: 600;
}
* {
  box-sizing: border-box;
}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}</style>
    </head>
	<body>
        <a href="#" class="nav-trigger"><span></span></a>
		<div class="side-nav">
			<div class="logo">
				<span>FaLRAS  |  ABPS Nagda </span>
			</div>
			<nav>
				<ul>
                    <li>
						<a href="dashboard.html">
							<span>
                                <i class="fa fa-home" aria-hidden="true"></i>
							<span>Home</span>
						</a>
                    </li>
					<li>
						<a href="falras.jsp">
							<span><i class="fa fa-user-plus"></i></span>
							<span>FaLRAS</span>
						</a>
                    </li>
					<li class = "active">
						<a href="opana.html">
							<span><i class="fa fa-home"></i></span>
							<span>Teacher Information</span>
						</a>
					</li>
                                                            <li>
						<a href="index.html">
							<span><i class="fa fa-sign-out" aria-hidden="true"></i>
</span>
							<span>Logout</span>
						</a>
					</li>
				</ul>
			</nav>
		</div>
    <div class="main-content">
        <div class="title">
            <h3 align = 'center'>Teacher Information Portal</h3>
        </div>
        <div class="main">
            <div class="widget">
                <div class="title">
                    <h3 font-color='black', align = 'center'>WELCOME TO TEACHER INFORMATION PORTAL </h3><br>
                    </div>
                <div class="chart">
                   <button class="w3-btn w3-block w3-black w3-left-align">Teacher on Leave details</button>
                        <div id="Demo1" class="w3-container w3-hide"></div>
                                <div class="container">
                                  <form action="tinfo.jsp">
                                  <div class="row">
                                    <div class="col-25">
                                      <label for="tname">Teacher Name</label>
                                    </div>
                                    <div class="col-75">
                                      <input type="text" id="tname" name="tname" placeholder="Enter Teacher Name....">
                                    </div>
                                  </div>
                                      <br>
                                      <br>
                                  <div class="row">
                                    <input type="submit" value="Submit">
                                  </div>
                                  </form>
                                </div>
                </div>
                		</div>
		</div>

        </body>
            <footer align = "center" class="footer">
            <p>Copyright ©2019 All rights reserved | Developed by Aditya Sharma</p>
</footer>
</html>