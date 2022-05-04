<%@ page import="java.sql.*"%>
<% 

String playerId=request.getParameter("playerId");
String contact=request.getParameter("contact");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sms","root","");
Statement stmt=con.createStatement();

int result1=stmt.executeUpdate("DELETE FROM invited WHERE invited.player_id = '"+playerId+"' AND invited.contact = '"+contact+"'");                  
int result2=stmt.executeUpdate("DELETE FROM guest WHERE guest.contact = '"+contact+"'");  

%>
<jsp:forward page="guest.jsp"></jsp:forward>