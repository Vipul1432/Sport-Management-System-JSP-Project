<%@ page import="java.sql.*" %>
<%
String playerId=request.getParameter("playerId");
String name=request.getParameter("name");
String contact=request.getParameter("contact");
String dateI=request.getParameter("dateI");
String fee=request.getParameter("fee");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sms","root","Password");
Statement stmt=con.createStatement();
String test1="insert into guest values('"+contact+"','"+name+"')";
String test2="insert into invited values('"+playerId+"','"+contact+"','"+dateI+"','"+fee+"')";
int result1=stmt.executeUpdate(test1); 
int result2=stmt.executeUpdate(test2); 
con.close();
%>
<jsp:forward page="guest.jsp"></jsp:forward>