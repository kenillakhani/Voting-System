<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Website with Login & Registration Form</title>
    <link rel="stylesheet" href="login.css" />
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css" />
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
    <br><br>
    <section class="home">
        <div class="form_container">
            <div class="form login_form">
                <form action="login.jsp" id="loginForm">
                    <h2>Login</h2>
                    <div class="input_box">
                        <input type="text" name="uname" placeholder="Enter your email" required />
                        <i class="uil uil-envelope-alt email"></i>
                    </div>
                    <div class="input_box">
                        <input type="password" name="psw" tid="loginPassword" placeholder="Enter your password" required />
                        <i class="uil uil-lock password"></i>
                    </div>
                    <div class="option_field">
                        <span class="checkbox">
                            <input type="checkbox" id="check" />
                            <label for="check">Remember me</label>
                        </span>
                        <a href="#" class="forgot_pw">Forgot password?</a>
                    </div>
                    <input class="button" type="submit" Value="Login Now"></input>
                    <div class="login_signup">Don't have an account? <a href="register.html" id="signupLink">Register</a></div>
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

    