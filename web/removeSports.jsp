<%@ page import="java.sql.*"%>
<% 

String sportsId=request.getParameter("sportsId");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sms","root","");
Statement stmt=con.createStatement();

int result=stmt.executeUpdate("delete from sport where sports_id='"+sportsId+"'");  

%>
<jsp:forward page="sports.jsp"></jsp:forward>