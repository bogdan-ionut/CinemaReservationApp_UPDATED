[#ftl]
[#import "/spring.ftl" as spring /]

<!DOCTYPE html>
<html>
<head>
<TITLE>Seat selection</TITLE>
<style>
table, td, th {
    border: 15px solid grey;
}

table {
    border-collapse: collapse;
    width: 60%;
}

td {

    height: 60px;
}
</style>
</head>

<body >
	<p align="center" style="color:"#737373";">
	Movie:<br>
	Date:<br>
	Hour:<br>
	Number of seats:<br>
	Studio:<br>
	Please select your seats:<br>
    <input  type="button" value = "Back" onclick="window.location.href='ticketTypeSelector.html'" >
	<input  type="button" value = "Next step" onclick="window.location.href='ticketConfirmation.html'"  >
	</p>
	<table ALIGN="center" bgcolor=lightblue width="100%">
		<tr><td align="center">SCREEN</td></tr></table>

	<table border="1" ALIGN="CENTEr" width="100%" bgcolor=grey>
		<tr><td ALIGN="center">Row1</td>
			<td bgcolor="green" ALIGN="center">1</td>
			<td bgcolor="green" ALIGN="center">2</td>
			<td bgcolor="green" ALIGN="center">3</td>
			<td bgcolor="green" ALIGN="center">4</td>
			<td bgcolor="green" ALIGN="center">5</td>
			<td bgcolor="green" ALIGN="center">6</td>
			<td bgcolor="green" ALIGN="center">7</td>
			<td bgcolor="green" ALIGN="center">8</td>
			<td bgcolor="green" ALIGN="center">9</td>
			<td bgcolor="green" ALIGN="center" width=60px>10</td></tr>
		<tr><td ALIGN="center">Row2</td>
			<td bgcolor="green" ALIGN="center">1</td>
	<td bgcolor="green" ALIGN="center">2</td>
	<td bgcolor="green" ALIGN="center">3</td>
	<td bgcolor="green" ALIGN="center">4</td>
	<td bgcolor="green" ALIGN="center">5</td>
	<td bgcolor="green" ALIGN="center">6</td>
	<td bgcolor="green" ALIGN="center">7</td>
	<td bgcolor="green" ALIGN="center">8</td>
	<td bgcolor="green" ALIGN="center">9</td>
	<td bgcolor="green" ALIGN="center" width=60px>10</td></tr>
	<tr><td ALIGN="center"width=30px>Row3</td>
	<td bgcolor="green" ALIGN="center">1</td>
	<td bgcolor="green" ALIGN="center">2</td>
	<td bgcolor="green" ALIGN="center">3</td>
	<td bgcolor="green" ALIGN="center">4</td>
	<td bgcolor="green" ALIGN="center">5</td>
	<td bgcolor="green" ALIGN="center">6</td>
	<td bgcolor="green" ALIGN="center">7</td>
	<td bgcolor="green" ALIGN="center">8</td>
	<td bgcolor="green" ALIGN="center">9</td>
	<td bgcolor="green" ALIGN="center" width=60px>10</td></tr>
	<tr><td ALIGN="center"width=30px>Row4</td>
	<td bgcolor="green" ALIGN="center">1</td>
	<td bgcolor="green" ALIGN="center">2</td>
	<td bgcolor="green" ALIGN="center">3</td>
	<td bgcolor="green" ALIGN="center">4</td>
	<td bgcolor="green" ALIGN="center">5</td>
	<td bgcolor="green" ALIGN="center">6</td>
	<td bgcolor="green" ALIGN="center">7</td>
	<td bgcolor="green" ALIGN="center">8</td>
	<td bgcolor="green" ALIGN="center">9</td>
	<td bgcolor="green" ALIGN="center" width=60px>10</td></tr>
	<tr><td ALIGN="center"width=30px>Row5</td>
	<td bgcolor="green" ALIGN="center">1</td>
	<td bgcolor="green" ALIGN="center">2</td>
	<td bgcolor="green" ALIGN="center">3</td>
	<td bgcolor="green" ALIGN="center">4</td>
	<td bgcolor="green" ALIGN="center">5</td>
	<td bgcolor="green" ALIGN="center">6</td>
	<td bgcolor="green" ALIGN="center">7</td>
	<td bgcolor="green" ALIGN="center">8</td>
	<td bgcolor="green" ALIGN="center">9</td>
	<td bgcolor="green" ALIGN="center" width=60px>10</td></tr>
		</table>
	</body>
</html>