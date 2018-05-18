[#ftl]
[#import "/spring.ftl" as spring /]

<html>
<head>
<TITLE>Cinema</TITLE>
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
	<table border="2" bgcolor="#737373" width="100%" heigth="99%">
	</tr><td><P ALIGN="CENTEr" color="red">
	<strong>
	Movie Avanpremiere
     </p>
    </td>
<td><P ALIGN="CENTEr">
<strong>
	Movie Premiere
     </p>
    </td>
	<td><P ALIGN="CENTEr">
	<strong>
	Movie Premiere
     </p>
    </td>
</tr>
<tr>
<td><P ALIGN="center">
	<A HREF=".HTML">
	<IMG SRC="/images/1.jpg" heigth="400" width="350">
	</a>
    </p>
    </td>
<td><P ALIGN="center">
	<A HREF=".HTML">
	<IMG SRC="/images/2.jpg" heigth="400" width="350">
	</a>
    </p>
    </td>
<td><P ALIGN="center">
	<A HREF=".HTML">
	<IMG SRC="/images/3.JPG" heigth="400" width="350">
	</a>
    </p>
    </td>
<tr>
<tr>
<td><P ALIGN="CENTEr">
    <strong>
	Adventure
     </p>
    </td>
<td><P ALIGN="CENTEr">
    <strong>
	Fantasy
     </p>
    </td>
	<td><P ALIGN="CENTEr">
	   <strong>
	Comedy
     </p>
    </td>
</tr>
<td><P ALIGN="center">
	<A HREF=".HTML">
	<IMG SRC="/images/4.jpg" heigth="400" width="350">
	</a>
    </p>
    </td>
<td><P ALIGN="center">
	<A HREF=".HTML">
	<IMG SRC="/images/5.jpg" heigth="400" width="350">
	</a>
    </p>
    </td>
	<td><P ALIGN="center">
	<A HREF=".HTML">
	<IMG SRC="/images/6.jpg" heigth="400" width="350">
	</a>
    </p>
    </td>

</tr>

</table>

</body>

</html>

