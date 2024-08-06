<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="homepage.css">

</head>
<body>
<%
	
	session.setAttribute("vp",request.getParameter("votingparty"));
	String vp = (String)request.getParameter("votingparty");
	String un = (String)session.getAttribute("un");
	savevote(vp,un);
%>

<%!
	public void savevote(String vote,String un)
	{
		String url ="jdbc:mysql://localhost:3306/dbms_4";
    	String uname = "root";
    	String pass = "2427";
    	try{
    		Connection con = DriverManager.getConnection(url,uname,pass);
        	PreparedStatement query =con.prepareStatement("UPDATE votinglogin SET `votingparty` = ? WHERE `username` = ? ");
        	query.setString(1,vote);
        	query.setString(2,un);
        	query.executeUpdate();
    	}
    	catch(SQLException e)
    	{
    		e.printStackTrace();
    	}
    
	}
%>

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
        
    	<div style="text-align:center;,font-family:Gill sans;">
    	<% if((String) session.getAttribute("vp")== null) 
    	{%>
    		<h1>You already Voted!!</h1>
    		<%}
    	else
    	{
    		%> 
    		<h1>Thank you For Voting! Your vote is counted..</h1>
    		<% 
    	}%>
    	</div>
    
     </section>
    
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

	
</body>
</html>