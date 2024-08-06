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
	public void RegisterUser(String userName,String passWord) throws SQLException, ClassNotFoundException {
	
    String url ="jdbc:mysql://localhost:3306/dbms_4";
    String uname = "root";
    String pass = "2427";
    Connection con = DriverManager.getConnection(url,uname,pass);


    String q = "insert into votinglogin values(?,?,?)";

    PreparedStatement query =con.prepareStatement(q);
    query.setString(1,userName);
    query.setString(2,passWord);
    query.setString(3,null);
    query.executeUpdate();
    
	}
%>

<%
	try {
		RegisterUser(request.getParameter("email"),request.getParameter("psw"));
		
	    
		}
       catch (SQLException exc) 
	{
    	exc.printStackTrace();
}
response.sendRedirect("homepage.jsp");
	
    
%>





</body>
</html>