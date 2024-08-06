<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>About Us</title>
    <link rel="stylesheet" href="about.css">

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
        <h5>Div-6 | G11 </h5>

        <div class="team">

            <div class="team-member">
                <h1>Member-1</h1>
                <p>Kenil Lakhani</p>
                <p>21BCP380</p>
            </div>

            <div class="team-member1">
                <h1>Member-2</h1>
                <p>Harshit Navadiya</p>
                <p>21BCP385</p>
            </div>
        </div>

    </section>
    <section class="footer">
        <p style="color: #fff;">All Rights are reserved | 2023</p>      
    </section>

</body>

</html>