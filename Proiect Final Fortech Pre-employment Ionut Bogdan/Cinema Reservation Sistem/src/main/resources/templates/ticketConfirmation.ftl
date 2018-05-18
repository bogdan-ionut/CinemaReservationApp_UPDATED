[#ftl]
[#import "/spring.ftl" as spring /]

<html>
<head>
<TITLE>Ticket Confirmation</TITLE>
</head>

<body bgcolor="#737373">
<p align="center" style="color:"#737373";">

	Movie:<br>
	Date:<br>
	Hour:<br>
	Studio:<br>
	Seats :<br><br><br>

	Please enter your personal information:<br>
	Name <br>
<input type="text" name="name">
<br>
Email<br>
<input type="text" name="email">
<br>
Phone number:<br>
<input type="text" name="phonenumber">
<br>
    <input  type="button" value = "Back" onclick="window.location.href='seatSelector.html'" >
	<input  type="button" value = "Finish Reservation" onclick="window.location.href='printTicket.html'"  >
	</p>



	</body>
</html>