<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>voting Page</title>
</head>
<body>


<%  
			String un = (String)session.getAttribute("un");
			String ps = (String)session.getAttribute("ps");
			try{
			if(voted(un,ps) == null)
			{
				%>
				<form action="voted.jsp">
  				<p>Please select your favorite Party:</p>
  				<input type="radio"  name="votingParty" value="BJP">Bhartiya Janta party<br/>
  				<input type="radio"  name="votingParty" value="Congress">Indian national congress<br/>
  				<input type="radio"  name="votingParty" value="AAP">Aam admi party<br/>
  				<input type="radio"  name="votingParty" value="Nota">Nota<br/>
  
  				<input type="submit" value="vote" onclick="displayRadioValue()">
  				</form>
				
				
			<% } 
			else{
				%>
				<p>you already voted in <% out.print(voted(un,ps)); %></p>
				
			
			<% }
		}
		catch(SQLException exc) 
		{
		    exc.printStackTrace();
		}
			
%>

<%!

public String voted(String un,String ps) throws SQLException, ClassNotFoundException {
    String url ="jdbc:mysql://localhost:3306/dbms_4";
    String uname = "root";
    String pass = "2427";
    Connection con = DriverManager.getConnection(url,uname,pass);
	String vp = "";

    String q = "SELECT votingparty FROM votinglogin WHERE username = ? AND Password = ?";
    PreparedStatement query =con.prepareStatement(q);
    query.setString(1,un);
    query.setString(2,ps);
    ResultSet rs = query.executeQuery();
    while(rs.next())
    {
    	vp = rs.getString("votingparty");
    }
    return vp;
}

%>




</body>
</html>