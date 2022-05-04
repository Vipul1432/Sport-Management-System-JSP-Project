<%@ page import="java.sql.*" %>
<%
String playerId=request.getParameter("playerId");
String name=request.getParameter("name");
String gender=request.getParameter("gender");
String address=request.getParameter("address");
String contact=request.getParameter("contact");
String feeStatus=request.getParameter("feeStatus");
String sportsId=request.getParameter("sportsId");
String dob=request.getParameter("dob");
String jdate=request.getParameter("jdate");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sms","root","");
Statement stmt=con.createStatement();
String test="insert into player values('"+playerId+"','"+name+"','"+gender+"','"+address+"','"+contact+"','"+feeStatus+"','"+sportsId+"','"+dob+"','"+jdate+"')";
int result=stmt.executeUpdate(test);  
con.close();
%>
<jsp:forward page="player.jsp"></jsp:forward>