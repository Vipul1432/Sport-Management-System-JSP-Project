<%@ page import="java.sql.*" %>
<html>
<body>
<% String name=request.getParameter("username");
   String password=request.getParameter("password");
   String conpassword=request.getParameter("conpassword");
   String email=request.getParameter("email");
   /// connection
   Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sms","root","Password");
Statement stmt=con.createStatement();
   if(!password.equals(conpassword))
   {
	   session.setAttribute("error","Password is not matching");
	   response.sendRedirect("http://localhost:8023/sports/register.jsp");
	   
   }
  
   String test1="insert into user values('"+name+"','"+email+"','"+password+"')";
   
   int result1=stmt.executeUpdate(test1); 

   response.sendRedirect("http://localhost:8023/sports/login.jsp");
   
   
   %>
</body>
</html>
