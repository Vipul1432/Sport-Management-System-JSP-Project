<%@ page import="java.sql.*" %>
<html>
<%@ include file="common.jsp" %>
<body style=" background-image:#EEEEEE;;">
<ul>

<li style="font-size:40"><b>Joining of Student</b></li>
<br><br>

<script src="canvasjs.min.js"></script>
<script type="text/javascript">
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/sms","root","");
Statement stmt1=con1.createStatement();
ResultSet rs1=stmt1.executeQuery("select *  from player where jdate LIKE '%2012%' ");
int count1=0;
while(rs1.next()){
	count1++;
	;
}


ResultSet rs2=stmt1.executeQuery("select *  from player where jdate LIKE '%2013%' ");
int count2=0;
while(rs2.next()){
	count2++;
	;
}



ResultSet rs3=stmt1.executeQuery("select *  from player where jdate LIKE '%2014%' ");
int count3=0;
while(rs3.next()){
	count3++;
	;
}




ResultSet rs4=stmt1.executeQuery("select *  from player where jdate LIKE '%2015%' ");
int count4=0;
while(rs4.next()){
	count4++;
	;
}

%>

var x1= "<%=count1%>";
var y1= "<%=count2%>";
var z1= "<%=count3%>";
var t1= "<%=count4%>";

var a11=parseInt(x1);
var b11=parseInt(y1);
var c11=parseInt(z1);
var d11=parseInt(t1);

window.onload = function () {
	var chart = new CanvasJS.Chart("chartContainer", {
		theme: "theme1",//theme2
		title:{
			text: "Player Joining in year"              
		},
		animationEnabled: true,   // change to true
		data: [              
		{
			// Change type to "bar", "area", "spline", "pie","column",etc.
			type: "column",
			dataPoints: [
				{ label: "2012",  y: a11  },
				{ label: "2013", y: b11  },
				{ label: "2014", y: c11  },
				{ label: "2015",  y: d11  }
			]
		}
		]
	});
	chart.render();
}
</script>
<body>
<div id="chartContainer" style="height: 300px; width: 600px;"></div></span>
</body>

<li style="font-size:40"><b>Joining of Student2</b></li>
<br><br>



<script type="text/javascript">
<%
Class.forName("com.mysql.jdbc.Driver");
Connection cont1=DriverManager.getConnection("jdbc:mysql://localhost:3306/sms","root","");
Statement stmtt1=cont1.createStatement();
ResultSet rst1=stmtt1.executeQuery("select *  from player where jdate LIKE '%2012%' ");
int countt1=0;
while(rst1.next()){
	countt1++;
	;
}


ResultSet rst2=stmtt1.executeQuery("select *  from player where jdate LIKE '%2013%' ");
int countt2=0;
while(rst2.next()){
	countt2++;
	;
}



ResultSet rst3=stmtt1.executeQuery("select *  from player where jdate LIKE '%2014%' ");
int countt3=0;
while(rst3.next()){
	countt3++;
	;
}




ResultSet rst4=stmtt1.executeQuery("select *  from player where jdate LIKE '%2015%' ");
int countt4=0;
while(rst4.next()){
	countt4++;
	;
}

%>

var xt1= "<%=countt1%>";
var yt1= "<%=countt2%>";
var zt1= "<%=countt3%>";
var tt1= "<%=countt4%>";

var at11=parseInt(xt1);
var bt11=parseInt(yt1);
var ct11=parseInt(zt1);
var dt11=parseInt(tt1);

window.onload = function () {
	var chart = new CanvasJS.Chart("chartContainer", {
		theme: "theme1",//theme2
		title:{
			text: "Player Joining in year"              
		},
		animationEnabled: true,   // change to true
		data: [              
		{
			// Change type to "bar", "area", "spline", "pie","column",etc.
			type: "column",
			dataPoints: [
				{ label: "2012",  y: at11  },
				{ label: "2013", y: bt11  },
				{ label: "2014", y: ct11  },
				{ label: "2015",  y: dt11  }
			]
		}
		]
	});
	chart.render();
}
</script>
<body>
<div id="chartContainer" style="height: 300px; width: 600px;"></div></span>
</body>



<br>
<br><br><br>
  <li style="font-size:40">Revenue and Expenditure in year 2014</b></li>
</ul>

<table id="tables">
  <tr>
  	<th style="background-color:red">Total Revenue</th>
    <th>Player Fee</th>
    <th>Staff Salary</th>
    <th>Guest Fee</th>
    <th>Sponsor Money to Club</th>
    <th>Sponsor Money to Sport</th>
    <th>Infra Expenditure</th>
  </tr>
  <%
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/sms","root","");
Statement stm=conn.createStatement();

PreparedStatement statement1 =  conn.prepareStatement("SELECT 12*sum(fee) from player ");
ResultSet result1 = statement1.executeQuery();
result1.next();

PreparedStatement statement2 =  conn.prepareStatement("Select 12*sum(salary) from staff");
ResultSet result2 = statement2.executeQuery();
result2.next();

PreparedStatement statement3 =  conn.prepareStatement("SELECT sum(fee) from invited where date_invited like '%2014%'");
ResultSet result3 = statement3.executeQuery();
result3.next();

PreparedStatement statement4 =  conn.prepareStatement("select sum(money) from providing where date like '%2014%'");
ResultSet result4 = statement4.executeQuery();
result4.next();

PreparedStatement statement5 =  conn.prepareStatement("select sum(money) from funding where date like '%2014%'");
ResultSet result5 = statement5.executeQuery();
result5.next();

PreparedStatement statement6 =  conn.prepareStatement("SELECT sum(quantity*cost) from infra");
ResultSet result6 = statement6.executeQuery();
result6.next();

int a1 = Integer.parseInt(result1.getString(1));
int a2 = Integer.parseInt(result2.getString(1));
int a3 = Integer.parseInt(result3.getString(1));
int a4 = Integer.parseInt(result4.getString(1));
int a5 = Integer.parseInt(result5.getString(1));
int a6 = Integer.parseInt(result6.getString(1));
int a7Final=a1+a3+a4+a5-a2-a6;


  %>
<tr>
<td><%=a7Final%></td>
<td><%=result1.getString(1)%></td>
<td><%=result2.getString(1)%></td>
<td><%=result3.getString(1)%></td>
<td><%=result4.getString(1)%></td>
<td><%=result5.getString(1)%></td>
<td><%=result6.getString(1)%></td>
</tr>
</table>
<br>
<br>
<br>
<br>

</html>