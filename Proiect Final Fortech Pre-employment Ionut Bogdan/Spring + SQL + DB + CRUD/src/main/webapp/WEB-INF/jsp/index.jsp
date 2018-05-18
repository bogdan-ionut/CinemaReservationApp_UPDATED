<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head><title>SpringBoot</title>
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
</style>
</head>
<body>

<table>
  <tr>
    <th>ID</th>
    <th>Title</th>
    <th>Genre</th>
    <th>Type</th>
    <th>Duration</th>
    <th>Action</th>
  </tr>
   <c:forEach var = "list" items = "${lists}">
  <tr>
    <td>${list.id}</td>
    <td>${list.title}</td>
    <td>${list.genre}</td>
    <td>${list.type}</td>
    <td>${list.duration}</td>
    <td>
        <button onclick="window.location.href='/view/${list.id}'" type="button">View</button>
        <button onclick="window.location.href='/edit/${list.id}'" type="button">Edit</button>
        <button onclick="window.location.href='/delete/${list.id}'" type="button">Delete</button>
    </td>
  </tr>
  </c:forEach>
</table>
<hr/>
<form method="post" action="/save">
<input type="hidden" name="id" value=""/>
  Title:<br>
  <input type="text" name="title"/>
  <br>
  Genre:<br>
  <input type="text" name="genre" >
  <br>
  Type:<br>
  <input type="text" name="type"/>
  <br>
  Duration:<br>
  <input type="text" name="duration"/>
  <br>
  <input type="submit" value="Submit">
</form>

</body>
</html>
