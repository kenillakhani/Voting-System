<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
public String fetchvp(String u) throws SQLException, ClassNotFoundException {
	
	String url ="jdbc:mysql://localhost:3306/dbms_4";
    String uname = "root";
    String pass = "2427";
    Connection con = DriverManager.getConnection(url,uname,pass);
	String vp = "";

    String q = "SELECT votingparty FROM votinglogin WHERE username = ? ";
    PreparedStatement query =con.prepareStatement(q);
    query.setString(1,u);
    ResultSet rs = query.executeQuery();
    while(rs.next())
    {
    	vp = rs.getString(1);
    }
    return vp;
    
}
%>


<%
String un = (String) session.getAttribute("un");
session.setAttribute("vp",fetchvp(un));		
String vp = (String) session.getAttribute("vp");

if(un != null && vp == null) {
    response.sendRedirect("vote.jsp");
    
}
else if(un!=null && vp!=null)
{
	response.sendRedirect("voted.jsp");
}
else
{
	response.sendRedirect("wwlog.jsp");
}
%>
</body>
</html>