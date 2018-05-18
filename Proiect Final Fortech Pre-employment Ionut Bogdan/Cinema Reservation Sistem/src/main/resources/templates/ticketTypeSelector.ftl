[#ftl]
[#import "/spring.ftl" as spring /]

<!DOCTYPE html>
<html>
<head>
<TITLE>Ticket Confirmation</TITLE>
<style>
table, td, th {
    border: 1px #737373;
}
</style>
</head>

<body bgcolor="#737373">
	<table ALIGN="center" bgcolor=lightblue width="100%">
	<tr><td>
	Ticket type</td><td> Quantity </td></tr>
	<tr><td>
	Normal</td><td>
	<select>
  <option value="0">0</option>
  <option value="1">1</option>
  <option value="2">2</option>
  <option value="3">3</option>
  <option value="4">4</option>
    </select>
	</td></tr>
	<tr><td>
	Student</td><td>
	<select>
  <option value="0">0</option>
  <option value="1">1</option>
  <option value="2">2</option>
  <option value="3">3</option>
  <option value="4">4</option>
    </select>
	</td></tr>
	<tr><td>
	Child</td><td>
	<select>
  <option value="0">0</option>
  <option value="1">1</option>
  <option value="2">2</option>
  <option value="3">3</option>
  <option value="4">4</option>
    </select>
	</td></tr>
	<tr><td>
	<input  type="button" value = "Back" onclick="window.location.href='program.html'"  />
	</td><td>
	<input  type="button" value = "Select seats" onclick="window.location.href='seatSelector.html'"  />
	</td></tr>


	</body>
</html>