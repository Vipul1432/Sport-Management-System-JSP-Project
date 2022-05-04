<%@ page import="java.sql.*" %>
<%
String sportsId=request.getParameter("sportsId");
String name=request.getParameter("name");
String fee=request.getParameter("fee");
String timings=request.getParameter("timings");


Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sms","root","");
Statement stmt=con.createStatement();
 

String test="insert into sport values('"+sportsId+"','"+name+"','"+fee+"','"+timings+"')";
int result=stmt.executeUpdate(test);  
con.close();
%>
<jsp:forward page="sports.jsp"></jsp:forward>