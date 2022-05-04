<%@ page import="java.sql.*" %>
<html>
<%@ include file="common.jsp" %>  

<body style=" background-image:#EEEEEE;">
<h1><center><u>STAFF</u></center></h1>
<br>

<table id="tables">
  <tr>
    <th>Staff id</th>
    <th>Name</th>
    <th>Salary</th>
    <th>Joining date</th>
    <th>Date of birth</th>
    <th>Contact</th>
    <th>Address</th>
    <th>Type</th>
    <th>Coaching Sports</th>
  </tr>
  <%
Class.forName("com.mysql.jdbc.Driver");
Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/sms","root","");
Statement stmt1=con1.createStatement();
Statement stmt2=con1.createStatement();
ResultSet rs1=stmt1.executeQuery("select *  from staff");
ResultSet rs2;

int a;
 while(rs1.next())
  {
	  a = Integer.parseInt(rs1.getString(8));
  %>
<tr>
<td><%=rs1.getString(1)%></td>
<td><%=rs1.getString(2)%></td>
<td><%=rs1.getString(3)%></td>
<td><%=rs1.getString(4)%></td>
<td><%=rs1.getString(5)%></td>
<td><%=rs1.getString(6)%></td>
<td><%=rs1.getString(7)%></td>
<td><%if(a==0)
	out.print("Admin");
	else if(a==1)
	out.print("Labour");
	else if(a==2)
		out.print("Sports Specific");
	else
		out.print("General");
			
	%>
</td>
<td>
<%
if(a==2)
{
	rs2=stmt2.executeQuery("SELECT s.name FROM sport AS s, allocated AS a WHERE (s.sports_id=a.sports_id) AND (a.staff_id='"+rs1.getString(1)+"')");
	rs2.next();
	out.print(rs2.getString(1));
}
else
	out.print("-");
%>

</td>


</tr>
<%
  }
  con1.close(); 
  
 %>
  </table>

<br><br>
<span class="shift"></span>
	<button class="block1" onclick="unhideStaffForm();">Add Staff</button>
<span class="shift"></span>
	<button class="block1" onclick="unhideStaffForm2();">Remove Staff</button>

<div class="staffForm">
    <form action="addStaff.jsp">
        <br>
        <span class="shift"></span>All the fields(except **) are mandatory. 
        <br><br>
        
        <span class="shift"></span><strong>STAFF_ID</strong><br>
        <span class="shift"></span><input name="staffId"></input>
        <br><br>
        <span class="shift"></span><strong>NAME</strong><br>
        <span class="shift"></span><input name="name"></input>
        <br><br>
        <span class="shift"></span><strong>SALARY</strong><br>
        <span class="shift"></span><input name="salary" id="salary"></input>
        <br><br>
        <span class="shift"></span><strong>JDATE</strong><br>
        <span class="shift"></span><input name="jdate"></input>
        <br><br>
        <span class="shift"></span><strong>DOB</strong><br>
        <span class="shift"></span><input name="dob"></input>
        <br><br>
        <span class="shift"></span><strong>CONTACT</strong><br>
        <span class="shift"></span><input name="contact"></input>
        <br><br>
        <span class="shift"></span><strong>ADDRESS</strong><br>
        <span class="shift"></span><input name="address"></input>
        <br><br>
        <span class="shift"></span><strong>TYPE</strong><br>
        <span class="shift"></span><input name="type"></input>
        <br><br>
        <span class="shift"></span><strong>SPORTS ID**</strong><br>
        <span class="shift"></span><input name="sportsId"></input>
        <br>
        
<span class="shift"></span>
<button class="block3" onclick="check();">SUBMIT</button>
</form>


</div>
<div class="staffForm2">
<form action="removeStaff.jsp">
<br>
        <span class="shift"></span>All the fields are mandatory
        <br><br>
        <span class="shift"></span><strong>STAFF ID for the row to be deleted.</strong><br>
        <span class="shift"></span><input name="staffId"></input>
        <br>
        
        <span class="shift"></span><button class="block3">SUBMIT</button>
</form>
</div>

<script src="hideUnhide.js"></script>
<script>
function check()
{
var StrS=document.getElementById('salary').value;
var IntS=parseInt(StrS);
if(IntS<0)
	{
	alert("WARNING: Salary is negative");
	}
}

</script>
</html>