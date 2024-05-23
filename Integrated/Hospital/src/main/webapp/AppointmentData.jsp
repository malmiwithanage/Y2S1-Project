<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title> Appointment  </title>
      
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
	<c:forEach var="app" items="${aDetails}">
	
	<c:set var="patientid" value="${app.patientID}"/>
	<c:set var="doctorid" value="${app.doctorID}"/>
	<c:set var="appdate" value="${app.appDate}"/>
	
	<tr>
		<td>Patient ID</td>
		<td>${app.patientID}</td>
	</tr>
	<tr>
		<td>Doctor ID</td>
		<td>${app.doctorID}</td>
	</tr>
	<tr>
		<td>Appointment Date</td>
		<td>${app.appDate}</td>
	</tr>
	

	</c:forEach>
	</table>
	
	<c:url value="AppointmentUpdate.jsp" var="cusupdate">
	
		<c:param name="patID" value="${patientid}"/>
		<c:param name="docID" value="${doctorid}"/>
		<c:param name="aDate" value="${appdate}"/>
		
	</c:url>
	<br>
	
	<a href="${cusupdate}">
	
	<input type="button" name="update" value="Update Data">
	
	</a>
	
        
      




</body>
</html>