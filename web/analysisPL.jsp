<%@ page import="java.sql.*" %>
<html>
<%@ include file="common.jsp" %>
<body style=" background-image:#EEEEEE;">


<h1 style="font-size:40"><b>Joining of Players</b></hi>
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
out.print(count1);

ResultSet rs2=stmt1.executeQuery("select *  from player where jdate LIKE '%2013%' ");
int count2=0;
while(rs2.next()){
	count2++;
	;
}
out.print(count2);


ResultSet rs3=stmt1.executeQuery("select *  from player where jdate LIKE '%2014%' ");
int count3=0;
while(rs3.next()){
	count3++;
	;
}
out.print(count3);



ResultSet rs4=stmt1.executeQuery("select *  from player where jdate LIKE '%2015%' ");
int count4=0;
while(rs4.next()){
	count4++;
	;
}
out.print(count4);
%>

var x= "<%=count1%>";
var y= "<%=count2%>";
var z= "<%=count3%>";
var t= "<%=count4%>";

var a=parseInt(x);
var b=parseInt(y);
var c=parseInt(z);
var d=parseInt(t);

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
			type: "pie",
			dataPoints: [
				{ label: "2012",  y: a  },
				{ label: "2013", y: b  },
				{ label: "2014", y: c  },
				{ label: "2015",  y: d  }
			]
		}
		]
	});
	chart.render();
}
</script>
</head>
<body>
<div id="chartContainer" style="height: 500px; width: 700px;"></div></span>
</body>
<br><br>
<h1 style="font-size:40"><b>Sponsored Players</b></hi>
<br><br>
<table id="tables">
  <tr>
    <th>Sponsor Name</th>
    <th>Player Name</th>
    <th>Sports</th>
    <th>Money Recieved</th>
    <th>Date</th>
 
  
  </tr>
  <%
Class.forName("com.mysql.jdbc.Driver");
Connection conq1=DriverManager.getConnection("jdbc:mysql://localhost:3306/sms","root","");
Statement stmtq1=conq1.createStatement();
ResultSet rsq1=stmtq1.executeQuery("SELECT b.name, c.name, d.name, a.money, a.date FROM sponsoring AS a, sponsor AS b, player AS c, sport AS d WHERE a.sponsor_id=b.sponsor_id AND a.player_id=c.player_id AND d.sports_id=c.sports_id;");
  while(rsq1.next())
  {
     
  %>
<tr>
<td><%=rsq1.getString(1)%></td>
<td><%=rsq1.getString(2)%></td>
<td><%=rsq1.getString(3)%></td>
<td><%=rsq1.getString(4)%></td>
<td><%=rsq1.getString(5)%></td>
</tr>
<%
  }
  conq1.close(); 
 %>
  </table>

</html>