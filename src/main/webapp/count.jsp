<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="java.sql.*" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Voting Page</title>
    <link rel="stylesheet" href="vote.css">
</head>
<body>
<%!
	public int CountVote(String party) throws SQLException, ClassNotFoundException {
    	String url ="jdbc:mysql://localhost:3306/dbms_4";
        String uname = "root";
        String pass = "2427";
    	Connection con = DriverManager.getConnection(url,uname,pass);

        String q = "select count(*) from votinglogin where votingparty=?";
    	PreparedStatement query =con.prepareStatement(q);
        query.setString(1,party);
        ResultSet rs = query.executeQuery();
    	int a = rs.getInt("count(*)"); 
    	return a;
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
        
    <main class="mn">
        <section class="vp" style="font-size: large; font-family:Verdana, Geneva, Tahoma, sans-serif;">
            <div id="vp_div1" >
                <img src="party/2.webp" alt="" id="ig1"><br>
                <p>Party1</p>
                <p>Vote Count: 6<% try{out.write(CountVote("Party1"));}catch(SQLException e){e.printStackTrace();} %></p>
            </div>
            <div id="vp_div1">
                <img src="party/4.png" alt="" id="ig1"><br>
                <p>Party2</p>
                <p>Vote Count: 2<% try{out.write(CountVote("Party2"));}catch(SQLException e){e.printStackTrace();} %></p>
            </div>
            <div id="vp_div1">
                <img src="party/1.png" alt="" id="ig1"><br>
                <p>Party3</p>
                <p>Vote Count: 3<% try{out.write(CountVote("Party3"));}catch(SQLException e){e.printStackTrace();} %></p>
            </div>
            <div id="vp_div1">
                <img src="party/5.png" alt="" id="ig1"><br>
                <p>Party4</p>
                <p>Vote Count: 1<% try{out.write(CountVote("Party4"));}catch(SQLException e){e.printStackTrace();} %></p>
            </div>
            <div id="vp_div1">
                <img src="party/3.jpeg" alt="" id="ig1" style="height:140px;width: 140px; border-radius: 70px;"><br>
                <p>Party5</p>
                <p>Vote Count: 2<% try{out.write(CountVote("Party5"));}catch(SQLException e){e.printStackTrace();} %></p>
            </div>
    
        </section>
    
    </main>
    
</body>
</html>
