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
	public Boolean authenticateUser(String userName,String passWord) throws SQLException, ClassNotFoundException {
	
    String url ="jdbc:mysql://localhost:3306/dbms_4";
    String uname = "root";
    String pass = "2427";
    Connection con = DriverManager.getConnection(url,uname,pass);


    String q = "SELECT * FROM votinglogin WHERE username = ? AND Password = ?";
    PreparedStatement query =con.prepareStatement(q);
    query.setString(1,userName);
    query.setString(2,passWord);
    ResultSet rs = query.executeQuery();
    return rs.next();
}
    
%>

<%
	try {
		session.setAttribute("un",request.getParameter("uname"));
    	session.setAttribute("ps",request.getParameter("psw"));
   
    if(authenticateUser(request.getParameter("uname"),request.getParameter("psw")))
    {
    	response.sendRedirect("homepage.jsp"); 
    }
    else
    {
    	response.sendRedirect("register.jsp");
    }
} catch (SQLException exc) 
	{
    	exc.printStackTrace();
}
    
    
%>





</body>
</html>