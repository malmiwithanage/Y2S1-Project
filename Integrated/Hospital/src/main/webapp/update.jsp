<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">


     body {
        background-image: https://th.bing.com/th/id/R.b7b2b12737d54643d25a1bb803797f79?rik=g10xVYkL%2bkCV8w&pid=ImgRaw&r=0;
        background-size: cover; 
    }
    
    form {
        width: 300px;
        margin: 0 auto;
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
        background-color: #f9f9f9;
    }

    input[type="text"],
    input[type="password"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 3px;
    }

    input[type="submit"] {
        background-color: #007BFF;
        color: #fff;
        padding: 10px 20px;
        border: none;
        border-radius: 3px;
        cursor: pointer;
    }
</style>
</head>
<body>
<%
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String phone = request.getParameter("phone");
    String email = request.getParameter("email");
    String userName = request.getParameter("uname");
    String password = request.getParameter("pass");
%>

<form action="update" method="post">
    Customer ID<input type="text" name="cusid" value="<%= id %>" readonly><br>
    Name<input type="text" name="name" value="<%= name %>"><br>
    Email <input type="text" name="email" value="<%= email %>"><br>
    Phone Number <input type="text" name="phone" value="<%= phone %>"><br>
    User Name <input type="text" name="uname" value="<%= userName %>"><br>
    Password <input type="password" name="pass" value="<%= password %>"><br>
    <input type="submit" name="submit" value="Update My Data"><br>
</form>
</body>
</html>