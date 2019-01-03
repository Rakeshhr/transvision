<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<style>
#customers {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

#customers td, #customers th {
	border: 1px solid #ddd;
	padding: 8px;
}

#customers tr:nth-child(even) {
	background-color: #f2f2f2;
}

#customers tr:hover {
	background-color: #ddd;
}

#customers th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: left;
	background-color: #4CAF50;
	color: white;
}
</style>
	
</head>
<body>

<div class="container">
  
  <ul class="nav nav-tabs">
    <li ><a data-toggle="tab" href="home">Home</a></li>
    <li class="active"><a data-toggle="tab" href="#menu1">Menu 1</a></li>
  </ul>

  <div class="tab-content">
    <div id="menu1" class="tab-pane fade in active">
     <table>
		<thead>
			<tr>
				<th>CandidateID</th>
				<th>Full Name</th>
				<th>Tel No</th>
				<th>Email Id</th>
				<th>Domain</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="s" items="${FORMLIST}">
				<tr>
					<td><c:out value="${s.id}" /></td>
					<td><c:out value="${s.name}" /></td>
					<td><c:out value="${s.phnno}" /></td>
					<td><c:out value="${s.email}" /></td>
					<td><c:out value="${s.domain}" /></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
     </div>
  </div>
</div>

</body>
</html>
