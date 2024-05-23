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
<h2>Admin register</h2>
  <form action="insert"  method="post"> 
    name : <input type="text" name="name"> <br> <br>
    email : <input type="text" name="email"> <br> <br>
    phone number : <input type="text" name="phone"> <br> <br>
    user name : <input type="text" name="uid"> <br> <br>
    password  : <input type="text" name="psw"> <br> <br>
    
    <input type="submit"  name="submit" value="create" class="but">
    
  </form>
</div>

</body>
</html>