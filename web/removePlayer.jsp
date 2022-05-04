<%@ page import="java.sql.*"%>
<% 

String playerId=request.getParameter("playerId");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sms","root","");
Statement stmt=con.createStatement();

int result=stmt.executeUpdate("delete from player where player_id='"+playerId+"'");  

%>
<jsp:forward page="player.jsp"></jsp:forward>