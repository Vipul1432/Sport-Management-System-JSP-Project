<%@ page import="java.sql.*" %>
<html>
<%@ include file="common.jsp" %>  

<body style=" background-image: #EEEEEE;">
<h1><center><u>INFRASTRUCTURE</u></center></h1>
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
Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/sms","root","");
Statement stmt1=con1.createStatement();
ResultSet rs1=stmt1.executeQuery("select *  from infra");
int a;
  while(rs1.next())
  {
	  a = Integer.parseInt(rs1.getString(4));
  %>
<tr>
<td><%=rs1.getString(1)%></td>
<td><%=rs1.getString(2)%></td>
<td><%=rs1.getString(3)%></td>
<td><%if(a==1)
	out.print("Sports Specific");
	else
	out.print("General");
	%></td>
<td><%=rs1.getString(5)%></td>

</tr>
<%
  }
  con1.close(); 
 %>
  </table>

<br><br>
<span class="shift"></span>
	<button class="block1" onclick="unhideStaffForm();">Add Infra</button>
<span class="shift"></span>
	<button class="block1" onclick="unhideStaffForm2();">Remove Infra</button>

<div class="staffForm">
    <form action="addInfra.jsp">
        <br>
        <span class="shift"></span>All the fields are mandatory
        <br><br>
        
        <span class="shift"></span><strong>Infrastructure ID</strong><br>
        <span class="shift"></span><input name="infraId"></input>
        <br><br>
        <span class="shift"></span><strong>NAME</strong><br>
        <span class="shift"></span><input name="name"></input>
        <br><br>
        <span class="shift"></span><strong>COST</strong><br>
        <span class="shift"></span><input name="cost" id="cost"></input>
        <br><br>
        <span class="shift"></span><strong>TYPE(0/1)</strong><br>
        <span class="shift"></span><input name="type" id="type"></input>
        <br><br>
        <span class="shift"></span><strong>QUANTITY</strong><br>
        <span class="shift"></span><input name="quantity" id="quantity"></input>
        <br>
        
<span class="shift"></span><button class="block3" onclick="check();">SUBMIT</button>
</form>


</div>
<div class="staffForm2">
<form action="removeInfra.jsp">
<br>
        <span class="shift"></span>All the fields are mandatory
        <br><br>
        <span class="shift"></span><strong>Infra ID(for the row to be deleted)</strong><br>
        <span class="shift"></span><input name="infraId"></input>
        <br>
        <span class="shift"></span><button class="block3">SUBMIT</button>
</form>
</div>

<script src="hideUnhide.js"></script>
<script>
function check()
{
var Strc=document.getElementById('cost').value;
var Intc=parseInt(Strc);
var Strq=document.getElementById('quantity').value;
var Intq=parseInt(Strq);

if(Intc<0)
	{
	alert("WARNING: cost is negative");
	}
if(Intq<0)
{
alert("WARNING: quantity is negative");
}

	}
</script>

</html>