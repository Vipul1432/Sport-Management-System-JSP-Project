<html>
	<link type = "text/css" rel = "stylesheet" href = "login.css"/>
	<body>
		<br><br><br><br>
		
<%

if(session.getAttribute("user")==null)
{
%>
	 <div class="login-block">
    <h1>Register Yourself</h1> 
<form action="registerprocess.jsp" method="post">
    <input type="text" value="" placeholder="Username" name="username" />
    <input type="email" placeholder="Enter your email" name="email">
    <input type="password" value="" placeholder="Password" name="password" />
    <input type="password" placeholder="Enter the password again" name="conpassword">
    <button>SUBMIT</button>
</form>
<% 
if(session.getAttribute("error")!=null){
	%>
<p style="color:red"><%
out.print(session.getAttribute("error"));
session.setAttribute("error",null);
}
%>
</p>

</div>
<%
}else{
%>
<div>
	<center><h1>u ahve already logged in</h1></center>
</div>
<%
}
%>
	</body>
	</html>