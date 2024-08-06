<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
    <link rel="stylesheet" href="wwlog.css">

</head>
<body>
	<section class="header">
        <nav>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="homepage.html">Smart  </a>
            <img src="img/9.png" alt="" width="70px">
            &nbsp;&nbsp;&nbsp;&nbsp;
            <div class="nav-links" id="navLinks">
                <ul>
                    <li><a href="homepage.jsp">Home</a></li>
                    <li><a href="document.jsp">About</a></li>
                    <%if(session.getAttribute("un")==null && session.getAttribute("adun")==null)
                    	{%>
                    <li><a href="wwlog.jsp">Login</a></li>
                    <%}
                    else
                    {
                    %>
                    	<li><a href="logout.jsp">LogOut</a></li>
                    	<%
                    }
                    %>
                    <li><a href="register.jsp">Register</a></li>
                </ul>
            </div>
        </nav>

    </section>

    <section class="about">

        <div class="team">

            <div class="team-member">
                <h1>Admin Login</h1>
                <form action = "adminlogin.jsp">
                <input type="submit" value="Log In" style="background-color:transparent;color:white;border-width:0px;font-size:medium;">
                </form>
            </div>

            <div class="team-member1">
                <h1>User Login</h1>
           		<form action = "loginn.jsp">
                <input type="submit" value="Log In" style="background-color:transparent;color:white;border-width:0px;font-size:medium;">
                </form>
            </div>
        </div>

    </section>
    <section class="footer">
        <p style="color: #fff;">All Rights are reserved | 2023</p>      
    </section>
</body>
</html>