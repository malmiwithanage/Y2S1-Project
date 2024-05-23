<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="abcdstyle.css">
</head>
<body>
<h2>Update admin profile</h2>
<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String number=request.getParameter("number");
String username=request.getParameter("username");
String password=request.getParameter("password");

%>

<form action="updat" method="post">
name : <input type="text" name="name" value="<%=name%>" readonly><br><br>
email : <input type="text" name="email" value="<%=email%>"><br><br>
phone : <input type="text" name="number" value="<%=number%>"><br><br>
user name : <input type="text" name="username" value="<%=username%>"><br><br>
password : <input type="text" name="password" value="<%=password%>"><br><br>

<input type="submit" name="submit" value="update my data" class="but">

</form>

</body>
</html>