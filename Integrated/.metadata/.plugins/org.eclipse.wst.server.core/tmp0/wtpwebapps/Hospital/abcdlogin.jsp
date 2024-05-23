<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="abcdstyle.css">
</head>
<body>
 <div id="loginadmin">
<h2>Admin logging</h2>
<form action="log" method="post">
   name : <input type="text" name="uid"> <br> <br>
   password : <input type="text" name="pass"> <br>
<input type="submit" name="submit" value="login" class="but"> <br>
</form>
If you are not not registered <a href="admininsert.jsp" id="admininsert">click here</a> to register
</div>

</body>
</html>