<%@ page import="java.sql.*" %>
<%
String playerId=request.getParameter("playerId");
String date=request.getParameter("date");
String title=request.getParameter("title");
String position=request.getParameter("position");
String team=request.getParameter("team");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sms","root","");
Statement stmt=con.createStatement();
String test1="insert into prize values('"+date+"','"+title+"','"+position+"','"+team+"')";
String test2="insert into won values('"+playerId+"','"+title+"')";
int result1=stmt.executeUpdate(test1); 
int result2=stmt.executeUpdate(test2); 
con.close();
%>
<jsp:forward page="prize.jsp"></jsp:forward>