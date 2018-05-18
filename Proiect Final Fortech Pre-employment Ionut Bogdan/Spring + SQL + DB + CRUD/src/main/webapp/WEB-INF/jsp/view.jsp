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
    <td>${lists.id}</td>
  </tr>
  <tr>
      <th>Title</th>
      <td>${lists.title}</td>
    </tr>
    <tr>
        <th>Genre</th>
        <td>${lists.genre}</td>
     </tr>
     <tr>
         <th>Type</th>
         <td>${lists.type}</td>
     </tr>
     <tr>
         <th>Duration</th>
         <td>${lists.duration}</td>
     </tr>
  </table>
  <a href="/">Back</a>
</body>
</html>
