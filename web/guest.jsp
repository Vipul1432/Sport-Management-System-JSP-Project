<%@ page import="java.sql.*" %>
<html>
<%@ include file="common.jsp" %>
<body style=" background-image:#EEEEEE;">
<h1><center><u>GUEST INVITED</u></center></h1>
<link rel="stylesheet" href="main.css">
<br>

<table id="tables">
  <tr>
    <th>CONTACT</th>
    <th>GUEST NAME</th>
	<th>PLAYER ID</th>
    <th>PLAYER NAME</th>
    <th>SPORT</th>
    <th>DATE INVITED</th>
    <th>FEE</th>
  </tr>
  <%
Class.forName("com.mysql.jdbc.Driver");
Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/sms","root","");
Statement stmt1=con1.createStatement();
ResultSet rs1=stmt1.executeQuery("SELECT * FROM guest AS g, player AS p, sport AS s, invited AS i WHERE g.contact=i.contact AND i.player_id=p.player_id AND p.sports_id=s.sports_id; ");
  while(rs1.next())
  {
     
  %>
<tr>
<td><%=rs1.getString(1)%></td>
<td><%=rs1.getString(2)%></td>
<td><%=rs1.getString(3)%></td>
<td><%=rs1.getString(4)%></td>
<td><%=rs1.getString(13)%></td>
<td><%=rs1.getString(18)%></td>
<td><%=rs1.getString(19)%></td>

</tr>
<%
  }
  con1.close(); 
 %>
  </table>

<br><br>
<span class="shift"></span>
	<button class="block1" onclick="unhideStaffForm();">Add Guest</button>
<span class="shift"></span>
	<button class="block1" onclick="unhideStaffForm2();">Remove Guest</button>

<div class="staffForm">
    <form action="addGuest.jsp">
        <br>
        <span class="shift"></span>All the fields are mandatory
        <br><br>
        <span class="shift"></span><strong>CONTACT</strong><br>
        <span class="shift"></span><input name="contact"></input>
        <br><br>
        <span class="shift"></span><strong>NAME</strong><br>
        <span class="shift"></span><input name="name"></input>
        <br><br>
        <span class="shift"></span><strong>PLAYER ID</strong><br>
        <span class="shift"></span><input name="playerId"></input>
        <br><br>
        <span class="shift"></span><strong>DATE INVITED</strong><br>
        <span class="shift"></span><input name="dateI"></input>
        <br><br>
        <span class="shift"></span><strong>FEE</strong><br>
        <span class="shift"></span><input name="fee" id="fee"></input>
        <br>
        
<span class="shift"></span><button class="block3" onclick="check();">SUBMIT</button>
</form>


</div>
<div class="staffForm2">
<form action="removeGuest.jsp">
<br>
        <span class="shift"></span>All the fields are mandatory
        <br><br>
        <span class="shift"></span><strong>CONTACT of the guest</strong><br>
        <span class="shift"></span><input name="contact"></input>
        <br><br>
        <span class="shift"></span><strong>PLAYER ID who invited the guest<strong><br>
        <span class="shift"></span><input name="playerId"></input>
        <br>
        
        <span class="shift"></span><button class="block3">SUBMIT</button>
</form>
</div>

<script src="hideUnhide.js"></script>
<script>
function check()
{
var Strfee=document.getElementById('fee').value;
var Intfee=parseInt(Strfee);
if(Intfee<0)
	{
	alert("WARNING: fee is negative");
	}
}


</script>

</html>