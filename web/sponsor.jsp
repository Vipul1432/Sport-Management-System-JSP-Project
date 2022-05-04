<%@ page import="java.sql.*" %>
<html>
<%@ include file="common.jsp" %>  

<body style=" background-image:#EEEEEE;">
<h1><center><u>SPONSORS</u></center></h1>
<br>

<table id="tables">
  <tr>
    <th>SPONSOR ID</th>
    <th>Name</th>
  </tr>
  <%
Class.forName("com.mysql.jdbc.Driver");
Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/sms","root","");
Statement stmt1=con1.createStatement();
ResultSet rs1=stmt1.executeQuery("select *  from sponsor");
  while(rs1.next())
  {
     
  %>
<tr>
<td><%=rs1.getString(1)%></td>
<td><%=rs1.getString(2)%></td>
</tr>
<%
  }
  con1.close(); 
 %>
  </table>
  <br><br>
  <span class="shift"></span>
	<button class="block1" onclick="unhideStaffForm();">Add Sponsor</button>
<span class="shift"></span>
	<button class="block1" onclick="unhideStaffForm2();">Remove Sponsor</button>

<div class="staffForm">
    <form action="addSponsor.jsp">
       <br>
        <span class="shift"></span>All the fields are mandatory
        <br><br>
        <span class="shift"></span>
        <strong>SPONSOR ID</strong><br>
        <span class="shift"></span>
        <input name="sponsorId"></input>
        <br><br>
        <span class="shift"></span>
        <strong>NAME</strong><br>
        <span class="shift"></span>
        <input name="name"></input>
        <br>
        
<span class="shift"></span>        
<button class="block3">SUBMIT</button>
</form>


</div>
<div class="staffForm2">
<form action="removeSponsor.jsp">
<br>
        <span class="shift"></span>All the fields are mandatory
        <br><br>
        <span class="shift"></span>
        <strong>SPONSOR ID for the row to be deleted.</strong><br>
        <span class="shift"></span>
        <input name="sponsorId"></input>
        <br>
        <span class="shift"></span>
        <button class="block3">SUBMIT</button>
</form>
</div>
  
<br><br><br>
<h1><center><u>SPONSORSING to Sport</u></center></h1>
<br>

<table id="tables">
  <tr>
    <th>SPONSOR ID</th>
    <th>SPONSOR Name</th>
    <th>SPORTS ID</th>
    <th>SPORTS NAME</th>
    <th>Money Sponsored</th>
    <th>DATE</th>
    
  </tr>
  <%
Class.forName("com.mysql.jdbc.Driver");
Connection con2=DriverManager.getConnection("jdbc:mysql://localhost:3306/sms","root","");
Statement stmt2=con2.createStatement();
ResultSet rs2=stmt2.executeQuery("SELECT * FROM sport AS a, funding AS b, sponsor AS s WHERE a.sports_id=b.sports_id AND b.sponsor_id=s.sponsor_id;");
  while(rs2.next())
  {
     
  %>
<tr>
<td><%=rs2.getString(9)%></td>
<td><%=rs2.getString(10)%></td>
<td><%=rs2.getString(1)%></td>
<td><%=rs2.getString(2)%></td>
<td><%=rs2.getString(7)%></td>
<td><%=rs2.getString(8)%></td>
</tr>
<%
  }
  con2.close(); 
 %>
  </table>
<br><br><br>
<h1><center><u>SPONSORSING to Players</u></center></h1>
<br>

<table id="tables">
  <tr>
    <th>SPONSOR ID</th>
    <th>SPONSOR Name</th>
    <th>Player ID</th>
    <th>Player NAME</th>
    <th>Money Sponsored</th>
    <th>DATE</th>
  </tr>
  <%
Class.forName("com.mysql.jdbc.Driver");
Connection con3=DriverManager.getConnection("jdbc:mysql://localhost:3306/sms","root","");
Statement stmt3=con3.createStatement();
ResultSet rs3=stmt3.executeQuery("SELECT * FROM player AS a, sponsoring AS b, sponsor AS s WHERE a.player_id=b.player_id AND b.sponsor_id=s.sponsor_id");
  while(rs3.next())
  {
     
  %>
<tr>
<td><%=rs3.getString(14)%></td>
<td><%=rs3.getString(15)%></td>
<td><%=rs3.getString(1)%></td>
<td><%=rs3.getString(2)%></td>
<td><%=rs3.getString(12)%></td>
<td><%=rs3.getString(13)%></td>
</tr>
<%
  }
  con3.close(); 
 %>
  </table>
<br><br><br>
<h1><center><u>SPONSORSING To Club</u></center></h1>
<br>

<table id="tables">
  <tr>
   <th>SPONSOR ID</th>
    <th>SPONSOR Name</th>
    <th>Money Sponsored</th>
    <th>DATE</th>
  </tr>
  <%
Class.forName("com.mysql.jdbc.Driver");
Connection con4=DriverManager.getConnection("jdbc:mysql://localhost:3306/sms","root","");
Statement stmt4=con4.createStatement();
ResultSet rs4=stmt4.executeQuery("SELECT * FROM providing AS p, sponsor AS s WHERE p.sponsor_id=s.sponsor_id");
  while(rs4.next())
  {
     
  %>
<tr>
<td><%=rs4.getString(4)%></td>
<td><%=rs4.getString(5)%></td>
<td><%=rs4.getString(2)%></td>
<td><%=rs4.getString(3)%></td>
</tr>
<%
  }
  con4.close(); 
 %>
  </table>
<br><br>


<script src="hideUnhide.js"></script>
</script>
</html>