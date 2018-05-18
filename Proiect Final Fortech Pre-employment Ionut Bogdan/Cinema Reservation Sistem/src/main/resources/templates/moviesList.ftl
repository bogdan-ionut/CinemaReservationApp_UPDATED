[#ftl]
[#import "/spring.ftl" as spring /]
<html>

<head>
<TITLE>AdminPage</TITLE>
</head>

<body bgcolor="#737373">
You are logged in as ADMIN<br><br>

    <b>Here is the movie list from your In_Memory_DB:</b>
    <br><br>

<table class="table">
    <tr>
        <th>Movie Name</th>
        <th>Movie Genre Type</th>
        <th>Movie Type</th>
        <th>Movie Duration</th>
        <th>Movie Date</th>
        <th></th>
    </tr>

    [#list movies as movie]
    <tr>
        <td align="center">${movie.movieName}</td>
        <td align="center">${movie.movieGenreType}</td>
        <td align="center">${movie.movieType}</td>
        <td align="center">${movie.movieDuration}</td>
        <td align="center">${movie.movieDate?string('dd/MM/yyyy')}</td>
        <td align="center"><a href="/delete?id=${movie.id?c}">
            Remove
            </a>

        </td>
    </tr>
    [/#list]

</table>

	<input  type="button" value = "Back" onclick="window.location.href='adminPage.html'"  />

</body>
</html>