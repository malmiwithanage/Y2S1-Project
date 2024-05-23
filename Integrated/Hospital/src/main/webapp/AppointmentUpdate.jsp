<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Insert title here</title>
</head>
<body>
       
       <%
       
         String patientid=request.getParameter("patID");
         String doctorid=request.getParameter("docID");
         String appdate=request.getParameter("aDate");   
       
         
       %>
       
       <form action="update" method="post">
	<table>
		<tr>
			     <td>Patient ID</td>
			<td> <input type="text" name="pid" value="<%= patientid %>" readonly> </td>
		</tr>
		<tr>
			    <td>Doctor ID</td>
			<td> <input type="text" name="did" value="<%= doctorid %>"></td>
		</tr>
		<tr>
		    <td>Appointment Date</td>
		<td><input type="text" name="adt" value="<%= appdate %>"></td>
	
	       </tr>
	       
	     
	       
	       
	       
	</table>
	
	<br>
	
	<input type="submit" name="submit" value="Update Data">
	
	</form>
       
       
       




</body>
</html>