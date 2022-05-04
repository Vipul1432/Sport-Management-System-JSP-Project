<%@ page import="java.sql.*" %>
<%
String sponsorId=request.getParameter("sponsorId");
String name=request.getParameter("name");


Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sms","root","");
Statement stmt=con.createStatement();
String test="insert into sponsor values('"+sponsorId+"','"+name+"')";
int result=stmt.executeUpdate(test);  
con.close();
%>
<jsp:forward page="sponsor.jsp"></jsp:forward>