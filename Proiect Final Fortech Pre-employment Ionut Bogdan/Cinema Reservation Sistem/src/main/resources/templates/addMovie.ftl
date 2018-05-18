[#ftl]


<html>
<head>
<TITLE>AdminPage</TITLE>
</head>

<body bgcolor="#737373">
	You are logged in as ADMIN<br><br>

<form method="POST" action="/save">

Enter movie name: <input name="movieName" type="textbox" id="enterMovieName" value="${movie.movieName!''}" /><br><br>


Select movieType:<br>
<select name="movieType" value="${movie.movieType!''}" >
<option  value="TWO_D">2D</option>
<option  value="THREE_D">3D</option>
<option  value="FOUR_D">4D</option>
</select><br><br>


<select name="movieGenreType" value="${movie.MovieGenreType!''}" >
<option  value="ACTION">ACTION</option>
<option  value="COMEDY">COMEDY</option>
<option  value="HORROR">HORROR</option>
<option  value="FICTION">FICTION</option>
<option  value="THRILLER">THRILLER</option>
<option  value="SCI_FI">SCI_FI</option>
<option  value="CRIME">CRIME</option>
</select>

	Enter movie duration(minutes): <input name="movieDuration" type="textbox" value="${movie.movieDuration!''}" id="enterMovieDuration" /><br><br>

	Select movieDate(dd/mm/year):
	  <input name="movieDate" type="input" value="[#if movie.movieDate??]${movie.movieDate?string('dd/MM/yyyy')}[/#if]" class="form-control" placeholder="Movie Date" aria-describedby="basic-addon1">



	<input  type="button" value = "Back" onclick="window.location.href='adminPage'"  />
	<input  type="submit" value = "save"/>

</form>

	</body>
</html>