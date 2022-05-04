<%@ page import="java.sql.*" %>
<html>
<%@ include file="common.jsp" %>
<body style=" background-image:#EEEEEE;">


<h1 style="font-size:40"><b>Different Sports Prizes</b></hi>
<br><br>

<script src="canvasjs.min.js"></script>
<script type="text/javascript">
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/sms","root","");
Statement stmt1=con1.createStatement();
ResultSet rs1=stmt1.executeQuery("select *  from won where player_id LIKE '%BA%' ");
int count1=0;
while(rs1.next()){
	count1++;
	;
}


ResultSet rs2=stmt1.executeQuery("select *  from won where player_id LIKE '%BB%' ");
int count2=0;
while(rs2.next()){
	count2++;
	;
}



ResultSet rs3=stmt1.executeQuery("select *  from won where player_id LIKE '%TE%' ");
int count3=0;
while(rs3.next()){
	count3++;
	;
}



ResultSet rs4=stmt1.executeQuery("select *  from won where player_id LIKE '%TT%' ");
int count4=0;
while(rs4.next()){
	count4++;
	;
}


ResultSet rs5=stmt1.executeQuery("select *  from won where player_id LIKE '%CR%' ");
int count5=0;
while(rs5.next()){
	count5++;
	;
}

ResultSet rs6=stmt1.executeQuery("select *  from won where player_id LIKE '%FB%' ");
int count6=0;
while(rs6.next()){
	count6++;
	;
}
%>

var x= "<%=count1%>";
var y= "<%=count2%>";
var z= "<%=count3%>";
var t= "<%=count4%>";
var m= "<%=count5%>";
var n= "<%=count6%>";

var a=parseInt(x);
var b=parseInt(y);
var c=parseInt(z);
var d=parseInt(t);
var e=parseInt(m);
var f=parseInt(n);

window.onload = function () {
	var chart = new CanvasJS.Chart("chartContainer", {
		theme: "theme2",//theme2
		title:{
			text: "PRIZES"              
		},
		animationEnabled: true,   // change to true
		data: [              
		{
			// Change type to "bar", "area", "spline", "pie","column",etc.
			type: "column",
			dataPoints: [
				{ label: "badminton",  y: a  },
				{ label: "basketball", y: b  },
				{ label: "tennis", y: c  },
				{ label: "table tennis",  y: d  },
				{ label: "cricket", y: e  },
				{ label: "football", y: f  }
			]
		}
		]
	});
	chart.render();
}
</script>
</head>
<body>
<div id="chartContainer" style="height: 300px; width: 600px;"></div></span>
</body>
<br><br>
<h1 style="font-size:40"><b>Players eligible for Club's yearly award-2015</b></h1>
**players winning any tournament on or after 2015/01/01**
<br><br>

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
Connection conk1=DriverManager.getConnection("jdbc:mysql://localhost:3306/sms","root","");
Statement stmtk1=conk1.createStatement();
ResultSet rsk1=stmtk1.executeQuery("SELECT * FROM prize AS z, won AS w, sport AS s, player AS p WHERE z.title=w.title AND w.player_id=p.player_id AND s.sports_id=p.sports_id AND z.position=1 AND z.date_prize LIKE '%2015%' ");
int a;  
while(rsk1.next())
  {
	  a = Integer.parseInt(rsk1.getString(4));
     
  %>
<tr>
<td><%=rsk1.getString(1)%></td>
<td><%=rsk1.getString(2)%></td>
<td><%=rsk1.getString(5)%></td>
<td><%=rsk1.getString(12)%></td>
<td><%=rsk1.getString(8)%></td>
<td><%=rsk1.getString(3)%></td>
<td><%if(a==1)
	out.print("team");
	else
	out.print("individual");
	%></td>



</tr>
<%
  }
  conk1.close(); 
 %>
  </table>

<br><br>
</html>
