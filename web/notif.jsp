<%@ page import="java.sql.*" %>
<html>
<%@ include file="common.jsp" %> 
<body style=" background-image:#EEEEEE;">
<ul>
  <li style="font-size:40"><b>Pending Fees</li>
  <br>
  <li style="font-size:40">Infrastructure Shortage</b></li>
</ul>

<br>
<h1><center>Pending Fees</center></h1>
<br>

<table id="tables">
  <tr>
    <th>Player id</th>
    <th>Name</th>
    <th>Gender</th>
    <th>Address</th>
    <th>Contact</th>
     <th>Fee</th>
    
    <th>Sports id</th>
    <th>Date of Birth</th>
    <th>Joining date</th>
  </tr>
  <%
Class.forName("com.mysql.jdbc.Driver");
Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/sms","root","");
Statement stmt1=con1.createStatement();
ResultSet rs1=stmt1.executeQuery("SELECT * FROM player AS p, sport AS s WHERE p.sports_id=s.sports_id AND fee_status=0");
  while(rs1.next())
  {
     
  %>
<tr>
<td><%=rs1.getString(1)%></td>
<td><%=rs1.getString(2)%></td>
<td><%=rs1.getString(3)%></td>
<td><%=rs1.getString(4)%></td>
<td><%=rs1.getString(5)%></td>
<td><%=rs1.getString(12)%></td>
<td><%=rs1.getString(7)%></td>
<td><%=rs1.getString(8)%></td>
<td><%=rs1.getString(9)%></td>
</tr>
<%
  }
  con1.close(); 
 %>
  </table>
  <br><br><br><br><br><br>
  
  
  
  
  
  
  <h1><center>Infrastructure Shortage</center></h1>
<br>

<table id="tables">
   <tr>
    <th>Infrastructure Id</th>
    <th>Name</th>
    <th>Cost</th>
    <th>Type</th>
    <th>Quantity</th>
    
  </tr>
  <%
Class.forName("com.mysql.jdbc.Driver");
Connection con2=DriverManager.getConnection("jdbc:mysql://localhost:3306/sms","root","");
Statement stmt2=con2.createStatement();
ResultSet rs2=stmt2.executeQuery("select *  from infra where (type=0 and quantity<6) or ( type=1 and quantity<4) ");
  while(rs2.next())
  {
  %>
<tr>
<td><%=rs2.getString(1)%></td>
<td><%=rs2.getString(2)%></td>
<td><%=rs2.getString(3)%></td>
<td><%=rs2.getString(4)%></td>
<td><%=rs2.getString(5)%></td>
</tr>
<%
  }
  con2.close(); 
 %>
  </table>
  <br><br><br><br><br><br>
  
</body>
</html>
