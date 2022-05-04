<%@ page import="java.sql.*" %>
<html>
<%@ include file="common.jsp" %>  

<body style=" background-image: #EEEEEE;">
<h1><center><u>PRIZES</u></center></h1>
<br>

<table id="tables">
  <tr>
    <th>DATE</th>
    <th>TITLE</th>
    <th>PLAYER ID</th>
    <th>PLAYER NAME</th>
    <th>SPORTS NAME</th>
    <th>POSITION</th>
    <th>TEAM/INDIVIDUAL(1/0)</th>
  </tr>
  <%
Class.forName("com.mysql.jdbc.Driver");
Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/sms","root","");
Statement stmt1=con1.createStatement();
ResultSet rs1=stmt1.executeQuery("SELECT * FROM prize AS z, won AS w, sport AS s, player AS p WHERE z.title=w.title AND w.player_id=p.player_id AND s.sports_id=p.sports_id");
int a;  
while(rs1.next())
  {
	  a = Integer.parseInt(rs1.getString(4));
     
  %>
<tr>
<td><%=rs1.getString(1)%></td>
<td><%=rs1.getString(2)%></td>
<td><%=rs1.getString(5)%></td>
<td><%=rs1.getString(12)%></td>
<td><%=rs1.getString(8)%></td>
<td><%=rs1.getString(3)%></td>
<td><%if(a==1)
	out.print("team");
	else
	out.print("individual");
	%></td>



</tr>
<%
  }
  con1.close(); 
 %>
  </table>

<br><br>
<span class="shift"></span>
	<button class="block1" onclick="unhideStaffForm();">Add Prize</button>
<span class="shift"></span>
	<button class="block1" onclick="unhideStaffForm2();">Remove Prize</button>

<div class="staffForm">
    <form action="addPrize.jsp">
        <br>
        <span class="shift"></span>All the fields are mandatory
        <br><br>
        <span class="shift"></span><strong>DATE</strong><br>
        <span class="shift"></span><input name="date"></input>
        <br><br>
        <span class="shift"></span><strong>TITLE</strong><br>
        <span class="shift"></span><input name="title"></input>
        <br><br>
        <span class="shift"></span><strong>POSITION</strong><br>
        <span class="shift"></span><input name="position"></input>
        <br><br>
        <span class="shift"></span><strong>TEAM/INDIVIDUAL(1/0)</strong><br>
        <span class="shift"></span><input name="team"></input>
        <br><br>
        <span class="shift"></span><strong>PLAYER ID</strong><br>
        <span class="shift"></span><input name="playerId"></input>
        <br>
        
<span class="shift"></span><button class="block3">SUBMIT</button>
</form>


</div>
<div class="staffForm2">
<form action="removePrize.jsp">
<br>
        <span class="shift"></span>All the fields are mandatory
        <br><br>
        <span class="shift"></span><strong>TITLE to be removed</strong><br>
        <span class="shift"></span><input name="title"></input>
        <br><br>
        <span class="shift"></span><strong>PLAYER ID for the corresponding title</strong><br>
        <span class="shift"></span><input name="playerId"></input>
        <br>
        
        <span class="shift"></span><button class="block3">SUBMIT</button>
</form>
</div>

<script src="hideUnhide.js"></script>
</html>