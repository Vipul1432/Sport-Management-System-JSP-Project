<%@ page import="java.sql.*"%>
<% 

String sponsorId=request.getParameter("sponsorId");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sms","root","");
Statement stmt=con.createStatement();

int result=stmt.executeUpdate("delete from sponsor where sponsor_id='"+sponsorId+"'");  

%>
<jsp:forward page="sponsor.jsp"></jsp:forward>