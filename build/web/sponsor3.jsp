<%@ page import="java.sql.*" %>
<html>
<%@ include file="common.jsp" %>  

<body style=" background-image:#EEEEEE;">
<h1><center><u>SPONSOR</u></center></h1>
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

<script src="hideUnhide.js"></script>
</script>
</html>