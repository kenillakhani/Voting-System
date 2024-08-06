<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Voting Page</title>
    <link rel="stylesheet" href="vote.css">
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
        
    <main class="mn">
        
            <form action="voted.jsp">
            <section class="vp">
            <div id="vp_div1">
                <img src="party/2.webp" alt="" id="ig1"><br>
                <p>Party1</p>
                <input type="radio" name="votingparty" id="votingparty" value="Party1">
            </div>
            <div id="vp_div1">
                <img src="party/4.png" alt="" id="ig1"><br>
                <p>Party2</p>
                <input type="radio" name="votingparty" id="votingparty" value="Party2">
            </div>
            <div id="vp_div1">
                <img src="party/1.png" alt="" id="ig1"><br>
                <p>Party3</p>
                <input type="radio" name="votingparty" id="votingparty" value="Party3">
            </div>
            <div id="vp_div1">
                <img src="party/5.png" alt="" id="ig1"><br>
                <p>Party4</p>
                <input type="radio" name="votingparty" id="votingparty" value="Party4">
            </div>
            <div id="vp_div1">
                <img src="party/3.jpeg" alt="" id="ig1"><br>
                <p>Party5</p>
                <input type="radio" name="votingparty" id="votingparty" value="Party5">
            </div>
            </section>
            <hr>
			<section class="bp">
			<div class="vp_div2">
			     <input type="submit" value="VOTE" style="background-color:#f44336; width:200px;border-width:0px;color:aliceblue;font-size:xx-large; border-radius:20px;">
			
			</div> 
			</section>
			        
			           
            </form>
    
    </main>
    
</body>
</html>