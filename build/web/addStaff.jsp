<%@ page import="java.sql.*" %>
<%
String staffId=request.getParameter("staffId");
String name=request.getParameter("name");
String salary=request.getParameter("salary");
String jdate=request.getParameter("jdate");
String dob=request.getParameter("dob");
String contact=request.getParameter("contact");
String address=request.getParameter("address");
String type=request.getParameter("type");
String sportsId=request.getParameter("sportsId");
int typeInt=Integer.parseInt(type);

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sms","root","");
Statement stmt=con.createStatement();
String test1="insert into staff values('"+staffId+"','"+name+"','"+salary+"','"+jdate+"','"+dob+"','"+contact+"','"+address+"','"+type+"')";
int result1=stmt.executeUpdate(test1);
if(typeInt==2)
{
String test2="insert into allocated values('"+sportsId+"','"+staffId+"')";
int result2=stmt.executeUpdate(test2);
}
con.close();
%>
<jsp:forward page="staff.jsp"></jsp:forward>