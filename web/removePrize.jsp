<%@ page import="java.sql.*"%>
<% 

String playerId=request.getParameter("playerId");
String title=request.getParameter("title");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sms","root","");
Statement stmt=con.createStatement();

int result1=stmt.executeUpdate("DELETE FROM won WHERE won.player_id = '"+playerId+"' AND won.title = '"+title+"'");                  
int result2=stmt.executeUpdate("DELETE FROM prize WHERE prize.title = '"+title+"'");  

%>
<jsp:forward page="prize.jsp"></jsp:forward>