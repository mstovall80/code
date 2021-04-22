<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<title>Secret Code</title>
</head>
<body>
	<div class="d-flex justify-content-evenly">
	<h1>What is the code?</h1>
	</div>
	<br>
<div class = "d-flex justify-content-evenly ">
	<!-- ... -->
<form method="POST" action="/processForm">
    <label>Password: <input type="password" name="password"></label>
    <button>Code input</button>
</form>
</div>
<p class="d-flex justify-content-evenly"><c:out value="${error }"/></p>
<!-- ... -->
	
</body>
</html>