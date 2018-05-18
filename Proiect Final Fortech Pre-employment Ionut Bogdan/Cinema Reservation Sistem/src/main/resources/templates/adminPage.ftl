[#ftl]
[#import "/spring.ftl" as spring /]


<!DOCTYPE html>
<html>
<head>
<TITLE>AdminPage</TITLE>
</head>

<body bgcolor="#737373">
	You are logged in as ADMIN<br>

	<input type="button" value="Add a movie" onclick="window.location.href='addMovie.html'"  /><br>
	<input type="button" value="List movies" onclick="window.location.href='moviesList.html'"  /><br>
	<input type="button" value="back" onclick="window.location.href='/'"  />

	</body>
</html>