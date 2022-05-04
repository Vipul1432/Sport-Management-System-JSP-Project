<html>
<%@ include file="common.jsp" %>
<body style=" background-image: url('sms1.jpg');">
    <div class="grid-container">
        <div>
<span class="shift"></span>
	<input type="submit" value="SPORTS" class="block1" onclick="location.href='sports.jsp';"></input>
<span class="shift"></span>
	<input type="submit" value="INFRASTRUCTURE" class="block1" onclick="location.href='infra.jsp';"></input>
<span style="display:inline-block; width:100px;"></span>
	<input type="submit" value="GUESTS" class="block1" onclick="location.href='guest.jsp';" ></input>
</div>

        <div>

<span class="shift"></span>
	<input type="submit" value="STAFF" id="staff" class="block1" onclick="location.href='staff.jsp';"></input>
<span class="shift"></span>
	<input type="submit" value="PLAYERS" class="block1" onclick="location.href='player.jsp';"></input>
<span style="display:inline-block; width:100px;"></span>
	<input type="submit" value="NOTIFICATION" class="block2" onclick="location.href='notif.jsp';"></input>

</div>
<div>
<span class="shift"></span>
	<input type="submit" value="SPONSORS" class="block1" onclick="location.href='sponsor.jsp';"></input>
<span class="shift"></span>
	<input type="submit" value="PRIZES" class="block1" onclick="location.href='prize.jsp';"></input>
<span style="display:inline-block; width:100px;"></span>
<input type="submit" value="ANALYSIS(player)" class="block2" onclick="location.href='analysisPL.jsp';"></input>	

</div>
        <div>
<span class="shift"></span><input type="submit" value="ANALYSIS(prize)" class="block2" onclick="location.href='analysisPR.jsp';"></input>
<span style="display:inline-block; width:218px;"></span><input type="submit" value="ANALYSIS(revenue)" class="block2" onclick="location.href='analysisR.jsp';"></input>

</div>
</div>

</body>
</html>