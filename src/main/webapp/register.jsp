<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="register.css">
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css" />
    <title>Document</title>
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
    <section class="home">
        <div class="form_container">
    <div class="form signup_form">
        <form id="signupForm" action="regs.jsp">
            <h2>Register Yourself</h2>
            <div class="input_box">
                <input type="email" name="email" placeholder="Enter your email" required />
                <i class="uil uil-envelope-alt email"></i>
            </div>
            <div class="input_box">
                <input type="password" name="psw" id="signupPassword" placeholder="Create password" required />
                <i class="uil uil-lock password"></i>
            </div>
            <div class="input_box">
                <input type="password" placeholder="Confirm password" required />
                <i class="uil uil-lock password"></i>
            </div>
            <input class="button" type="submit" Value="Register"></input>
            <div class="login_signup">Already have an account? <a href="loginn.jsp" id="loginLink">Login</a></div>
        </form>
    </div>
    </div>
    </section>

    <section class="footer">
        <p style="color: #fff;">All Rights are reserved | 2023</p>      
    </section>
    <script src="script.js"></script>
</body>
</html>