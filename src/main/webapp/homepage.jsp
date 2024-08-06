<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="homepage.css">
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
<br><br>

    <div class="slider">
        <div class="list">
            <div class="item">
                <img src="img/2.webp" alt="">
            </div>
            <div class="item">
                <img src="img/13.jpg" alt="">
            </div>
            <div class="item">
                <img src="img/16.webp" alt="">
            </div>
            <div class="item">
                <img src="img/17.png" alt="">
            </div>
        </div>
        <div class="buttons">
            <button id="prev"><</button>
            <button id="next">></button>
        </div>
        <ul class="dots">
            <li class="active"></li>
            <li></li>
            <li></li>
            <li></li>
        </ul>
    </div>
<br><br><br>
    <div class="cont">
        <div id="i1">
            <img id="im1" src="img/24.jpeg" alt="">
        </div>
        <div id="t1">
            <h1>Voting is your superpower in a democracy.</h1>
            <P style="font-size:large">
                It allows you to shape your world, stand up for your beliefs, and influence the future of your country and community. Your vote is your voice, so click the <B>'Vote Now'</B> button and make your mark on the future today!"

            </P>
            <br>
    <form action="igblUser.jsp">
    	<input type="submit" value="Vote Now" class="cont_btn">
    </form>
    </div>
</div>

<div class="cont">
    
    <div id="t1">
        <br><br><br>
        <h1>Your Voice, Your Vote: Shaping the Future Together!</h1>
    <p style="font-size:large">Voting is your chance to influence how your country or community is governed. 
        It's a way to make your voice heard and hold leaders accountable for their actions. 
        
        So, don't miss the opportunity to shape the future—vote and be part of the decision-making process!
</p>

</div>
<div id="i1">
    <img id="im1" src="img/14.png" alt="">
</div>
</div>

<p style="font-size:large; text-align: center;" >
    If you have any questions or suggestions, please don't hesitate to contact us.
    We are always open to feedback and look forward to hearing from you.
</p>
<footer class="ft1">
        <div class="f-item-con">
            <div class="useful-links">
                <div class="footer-title">Useful Links</div>
                <ul>
                    <li>Courses</li>
                    <li>Sign In</li>
                    <li>About Us</li>
                    <li>Become an Affiliate</li>
                    <li>Advertise with Us</li>
                    <li>Terms and Conditions</li>
                </ul>
            </div>
            <div class="help-sec">
                <div class="footer-title">Help</div>
                <ul>
                    <li>Help Me</li>
                    <li>Feedback</li>
                    <li>Report a Issue / Bug</li>
                </ul>
            </div>
            </div>
            <div>
            <div class="g-i-t">
                <div class="footer-title">Get in Touch</div>
                <form  action="homepage.html" method="post" class="space-y-2">
                    <input type="text" name="g-name" class="g-inp" id="g-name" placeholder='Name' />&nbsp;
                    <input type="email" name="g-email" class="g-inp" id="g-email" placeholder='Email' />&nbsp;
                    <textarea type="text" name="g-msg" class="g-inp h-40 resize-none" id="g-msg"
                        placeholder='Message...'></textarea>&nbsp;
                    <button type="submit" class='f-btn'>Submit</button>&nbsp;
                </form>
            </div>
        </div>
        <hr>
        <div class='cr-con'>Copyright &copy; 2023</div>
    </footer>

    <script src="app.js"></script>

</body>
</html>