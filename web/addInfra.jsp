<%@ page import="java.sql.*" %>
<%
String infraId=request.getParameter("infraId");
String name=request.getParameter("name");
String cost=request.getParameter("cost");
String type=request.getParameter("type");
String quantity=request.getParameter("quantity");


Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sms","root","");
Statement stmt=con.createStatement();
String test="insert into infra values('"+infraId+"','"+name+"','"+cost+"','"+type+"','"+quantity+"')";
int result=stmt.executeUpdate(test);  
con.close();
%>
<jsp:forward page="infra.jsp"></jsp:forward>