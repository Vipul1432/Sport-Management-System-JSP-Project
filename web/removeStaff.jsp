<%@ page import="java.sql.*"%>
<% 

String staffId=request.getParameter("staffId");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sms","root","");
Statement stmt=con.createStatement();
int result1=stmt.executeUpdate("delete from allocated where staff_id='"+staffId+"'"); 
int result2=stmt.executeUpdate("delete from staff where staff_id='"+staffId+"'");  

%>
<jsp:forward page="staff.jsp"></jsp:forward>