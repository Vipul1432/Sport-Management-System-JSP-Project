<%@ page import="java.sql.*" %>
<html>
<%@ include file="common.jsp" %>  

<body style=" background-image: #EEEEEE;">
<h1><center><u>SPORTS</u></center></h1>
<br>

<table id="tables">
  <tr>
    <th>Sports id</th>
    <th>Name</th>
    <th>Fee</th>
    <th>Timings</th>
  </tr>
  <%
Class.forName("com.mysql.jdbc.Driver");
Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/sms","root","");
Statement stmt1=con1.createStatement();
ResultSet rs1=stmt1.executeQuery("select *  from sport");
  while(rs1.next())
  {
     
  %>
<tr>
<td><%=rs1.getString(1)%></td>
<td><%=rs1.getString(2)%></td>
<td><%=rs1.getString(3)%></td>
<td><%=rs1.getString(4)%></td>
</tr>
<%
  }
  con1.close(); 
 %>
  </table>

<br><br>
<span class="shift"></span>
	<button class="block1" onclick="unhideStaffForm();">Add Sport</button>
<span class="shift"></span>
	<button class="block1" onclick="unhideStaffForm2();">Remove Sport</button>

<div class="staffForm">
    <form action="addSports.jsp">
        <br>
        <span class="shift"></span>All the fields are mandatory
        <br><br>
        
        <span class="shift"></span><strong>SPORTS ID</strong><br>
        <span class="shift"></span><input name="sportsId"></input>
        <br><br>
        <span class="shift"></span><strong>NAME</strong><br>
        <span class="shift"></span><input name="name"></input>
        <br><br>
        <span class="shift"></span><strong>FEE</strong><br>
        <span class="shift"></span><input name="fee" id="fee"></input>
        <br><br>
        <span class="shift"></span><strong>TIMINGS</strong><br>
        <span class="shift"></span><input name="timings"></input>
       <br>
<span class="shift"></span><button class="block3" value="submit" onclick="check();">SUBMIT</button>
</form>


</div>
<div class="staffForm2">
<form action="removeSports.jsp">
<br>
        <span class="shift"></span>All the fields are mandatory
        <br><br>
        <span class="shift"></span><strong>SPORTS ID(for the row to be deleted)</strong><br>
        <span class="shift"></span><input name="sportsId"></input>
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

</body>
</html>