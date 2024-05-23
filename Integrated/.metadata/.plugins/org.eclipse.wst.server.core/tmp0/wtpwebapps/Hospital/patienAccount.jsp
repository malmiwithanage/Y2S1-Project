<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Patient Information</title>
<head>
	<style type="text/css">
		body{
			font-family: Hind SemiBold;
		}
	
		table, th, td {
  			border: 1px solid black;
		}
	</style>
</head>
<body>

	<table>
	<c:forEach var="res" items="${rdetails}">
	
	<c:set var="id" value="${res.id}"/>
	<c:set var="name" value="${res.name}"/>
	<c:set var="email" value="${res.email}"/>
	<c:set var="phone" value="${res.phone}"/>
	<c:set var="username" value="${res.username}"/>
	<c:set var="password" value="${res.password}"/>
	
	<tr>
		<td>Patient ID</td>
		<td>${res.id}</td>
	</tr>
	<tr>
		<td>Patient Name</td>
		<td>${res.name}</td>
	</tr>
	<tr>
		<td>Patient email</td>
		<td>${res.email}</td>
	</tr>
	<tr>
		<td>Patient Phone</td>
		<td>${res.phone}</td>
	</tr>
	<tr>
		<td>Patient User</td>
		<td>${res.username}</td>
	</tr>
	

	</c:forEach>
	</table>

              r>
	<c:url value="deletecustomer.jsp" var="cusdelete">
	
		<c:param name="id" value="${id}" />
		<c:param name="name" value="${name}" />
		<c:param name="email" value="${email}" />
		<c:param name="phone" value="${phone}" />
		<c:param name="uname" value="${username}" />
		<c:param name="pass" value="${password}" />
	</c:url>
	
	<a href="${cusdelete}">
	<input type="button" name="delete" value="Delete Data">
	</a>
	

        
        



</body>
</html>