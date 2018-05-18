[#ftl]
[#import "/spring.ftl" as spring /]

<html>
<head>
<TITLE>Program</TITLE>
</head>

<body bgcolor="#737373">
<p  align="right">

<input type="button" value = "Admin Console" onclick="window.location.href='adminPage'"/>
</p>
	<fieldset>
			<legend><style>
						legend {
						font-size: 40px
						}</style> CINEMA </legend>

			<input type="button" value = "HOME" onclick="window.location.href='/'"  />
			<input type="button" value="MOVIES" onclick="window.location.href='movies.html'"/>
			<input type="button" value="PROGRAM" onclick="window.location.href='program.html'" />

			<input type="button" value="NEWS" onclick="window.location.href='news'"/>
			<input type="button" value="CONTACT" onclick="window.location.href='Contact.html'"/>
			SEARCH: <input type="textbox" id="search" />

	</fieldset>

<table border="2" ALIGN="CENTEr" bgcolor="#e6e6e6" width="60%" heigth="80%">
<tr>
	<td><P ALIGN="CENTEr" color="red">
	Movie Date :<select>
  <option value="23">23.01.2018</option>
  <option value="24">24.01.2018</option>
  <option value="25">25.01.2018</option>
  <option value="26">26.01.2018</option>
  <option value="27">27.01.2018</option>
  <option value="28">28.01.2018</option>
  <option value="29">29.01.2018</option>
</select>
     </p>
    </td>
   <td><P ALIGN="center">
   	<A HREF="ticketTypeSelector.HTML">
   	    15:00  <br></a>
       	20:00  <br>
       	18:00<br>
       	19:00 <br>
       	22:00<br>
       	16:00<br>
       	17:00<br>
       	21:00<br>
       	19:00<br>
       </p>
       </td>
    </tr>
    <tr>
        <th>Movie Name</th>
        <th>Movie Genre Type</th>
        <th>Movie Type</th>
        <th>Movie Duration</th>
        <th>Movie Date</th>
    </tr>

    [#list movies as movie]
    <tr>
        <td align="center">${movie.movieName}</td>
        <td align="center">${movie.movieGenreType}</td>
        <td align="center">${movie.movieType}</td>
        <td align="center">${movie.movieDuration}</td>
        <td align="center">${movie.movieDate?string('dd/MM/yyyy')}</td>
    </tr>
    [/#list]

</table>

</body>

</html>

