<%@ page import="java.sql.*"%>
<% 
String infraId=request.getParameter("infraId");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sms","root","");
Statement stmt=con.createStatement();

int result=stmt.executeUpdate("delete from infra where infra_id='"+infraId+"'");  

%>
<jsp:forward page="infra.jsp"></jsp:forward>