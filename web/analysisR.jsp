<%@ page import="java.sql.*" %>
<html>
<%@ include file="common.jsp" %>
<body style=" background-image:#EEEEEE;">



 <h1 style="font-size:50"><b>Revenue and Expenditure in year 2021</b></h1>
 
 <br><br>
<ul>
<li style="font-size:30">Tabular Analysis</li>
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

PreparedStatement statement1 =  conn.prepareStatement("SELECT 12*sum(s.fee) FROM player AS p, sport AS s WHERE p.sports_id=s.sports_id;");
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




<li style="font-size:30">Bar Graph</li>


<script src="canvasjs.min.js"></script>
<script type="text/javascript">


var x1= "<%=a1%>";
var y1= "<%=a2%>";
var z1= "<%=a3%>";
var t1= "<%=a4%>";
var q1= "<%=a5%>";
var m1= "<%=a6%>";

var a1=parseInt(x1);
var b1=parseInt(y1);
var c1=parseInt(z1);
var d1=parseInt(t1);
var e1=parseInt(q1);
var f1=parseInt(m1);

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
			type: "bar",
			dataPoints: [
				{ label: "Player Fee",  y: a1  },
				{ label: "Staff Salary", y: b1  },
				{ label: "Guest Fee", y: c1  },
				{ label: "Sponsor Money to Club", y: d1  },
				{ label: "Sponsor Money to Sport", y: e1  },
				{ label: "Infra Expenditure",  y: f1  }
			]
		}
		]
	});
	chart.render();
}

</script>
</head>
<body>
<div id="chartContainer" style="height: 500px; width: 800px;"></div></span>
</body>


<br>
<br><br><br>
 
</html>