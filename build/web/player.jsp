<%@ page import="java.sql.*" %>
<html>
<%@ include file="common.jsp" %> 
<body style=" background-image: #EEEEEE;">
<h1><center><u>PLAYERS</u></center></h1>
<br>

<table id="tables">
  <tr>
    <th>Player id</th>
    <th>Name</th>
    <th>Sports Name</th>
    <th>Gender</th>
    <th>Address</th>
    <th>Contact</th>
    <th>Fee</th>
    <th>Fee status</th>
    <th>Date of Birth</th>
    <th>Joining date</th>
  </tr>
  <%
Class.forName("com.mysql.jdbc.Driver");
Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/sms","root","");
Statement stmt1=con1.createStatement();
ResultSet rs1=stmt1.executeQuery("SELECT * FROM player AS p, sport AS s WHERE p.sports_id=s.sports_id;");
int a; 
while(rs1.next())
  {
	  a = Integer.parseInt(rs1.getString(6));
     
  %>
<tr>
<td><%=rs1.getString(1)%></td>
<td><%=rs1.getString(2)%></td>
<td><%=rs1.getString(11)%></td>
<td><%=rs1.getString(3)%></td>
<td><%=rs1.getString(4)%></td>
<td><%=rs1.getString(5)%></td>
<td><%=rs1.getString(12)%></td>
<td><%if(a==1)
	out.print("paid");
	else
	out.print("not paid");
	%></td>
<td><%=rs1.getString(8)%></td>
<td><%=rs1.getString(9)%></td>
</tr>
<%
  }
  con1.close(); 
 %>
  </table>

<br><br>
<span class="shift"></span>
	<button class="block1" onclick="unhideStaffForm();">Add Player</button>
<span class="shift"></span>
	<button class="block1" onclick="unhideStaffForm2();">Remove Player</button>

<div class="staffForm">
    <form action="addPlayer.jsp">
      <br>
        <span class="shift"></span>All the fields are mandatory
        <br><br>
        
        <span class="shift"></span><strong>Player Id</strong><br>
        <span class="shift"></span><input name="playerId"></input>
        <br><br>
        <span class="shift"></span><strong>NAME</strong><br>
        <span class="shift"></span><input name="name"></input>
        <br><br>
        <span class="shift"></span><strong>GENDER</strong><br>
        <span class="shift"></span><input name="gender"></input>
        <br><br>
        <span class="shift"></span><strong>ADDRESS</strong><br>
        <span class="shift"></span><input name="address"></input>
        <br><br>
        <span class="shift"></span><strong>CONTACT</strong><br>
        <span class="shift"></span><input name="contact"></input>
        <br><br>
        <span class="shift"></span><strong>FEE STATUS(0/1)</strong><br>
        <span class="shift"></span><input name="feeStatus"></input>
        <br><br>
        <span class="shift"></span><strong>SPORTS ID</strong><br>
        <span class="shift"></span><input name="sportsId"></input>
        <br><br>
        
        <span class="shift"></span><strong>DATE OF BIRTH</strong><br>
        <span class="shift"></span><input name="dob"></input>
        <br><br>
        <span class="shift"></span><strong>JOINING DATE</strong><br>
        <span class="shift"></span><input name="jdate"></input>
        <br>
        
<span class="shift"></span><button class="block3">SUBMIT</button>
</form>


</div>
<div class="staffForm2">
<form action="removePlayer.jsp">
<br>
        <span class="shift"></span>All the fields are mandatory
        <br><br>

        <span class="shift"></span><strong>PLAYER ID for the row to be deleted.</strong><br>
        <span class="shift"></span><input name="playerId"></input>
        <br>
        
        <span class="shift"></span><button class="block3">SUBMIT</button>
</form>
</div>

<script src="hideUnhide.js"></script>
</html>