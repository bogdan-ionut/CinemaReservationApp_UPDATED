<!DOCTYPE html>
<html>
<head>
<TITLE>AdminPage</TITLE>
</head>

<body bgcolor="#737373">
	You are logged in as ADMIN<br><br>

	Search movie: <input type="textbox" id="enterMovieName" /><br><br>

	Edit movieType:<br>
	<select>
  <option value="TWO_D">2D</option>
  <option value="THREE_D">3D</option>
  <option value="FOUR_D">4D</option>
  </select><br><br>

	Edit movieGenreType:<br>
	<input type="checkbox" name="action" value="action"> Action<br>
    <input type="checkbox" name="comedy" value="comedy"> Comedy<br>
	<input type="checkbox" name="Adventure" value="Adventure"> Adventure<br>
	<input type="checkbox" name="Crime" value="Crime"> Crime<br>
	<input type="checkbox" name="Thriller" value="Thriller"> Thriller<br>
	<input type="checkbox" name="Sci-Fi" value="Sci-Fi"> Sci-Fi<br><br>

	Edit movie duration(minutes): <input type="textbox" id="enterMovieDuration" /><br><br>

	Edit movieDate:
	<select>
  <option value="23">23.01.2018</option>
  <option value="24">24.01.2018</option>
  <option value="25">25.01.2018</option>
  <option value="26">26.01.2018</option>
  <option value="27">27.01.2018</option>
  <option value="28">28.01.2018</option>
  <option value="29">29.01.2018</option>
</select><br><br>

	Edit movieHour:
	<select>
  <option value="23">15:00</option>
  <option value="24">16:00</option>
  <option value="25">17:00</option>
  <option value="26">18:00</option>
  <option value="27">19:00</option>
  <option value="28">20:00</option>
  <option value="29">21:00</option>
  <option value="29">22:00</option>
</select><br><br>
	<input  type="button" value = "Back" onclick="window.location.href='adminPage.html'"  />
	<input  type="button" value = "saveMovie" onclick="window.location.href='moviesList.html'"  >

	</body>
</html>