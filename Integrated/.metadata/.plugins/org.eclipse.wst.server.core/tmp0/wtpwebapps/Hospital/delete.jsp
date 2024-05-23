<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>delete</title>
<style type="text/css">


    body {
        background-image: https://th.bing.com/th/id/R.b7b2b12737d54643d25a1bb803797f79?rik=g10xVYkL%2bkCV8w&pid=ImgRaw&r=0;
        background-size: cover; 
    }
    
    h1 {
        color: #333; 
    }

    table {
        border-collapse: collapse;
        width: 80%; 
        margin: 20px auto; 
        background-color: #f9f9f9;
        border: 1px solid #ccc; 
        border-radius: 5px; 
        padding: 20px; 
    }

    td {
        padding: 5px;
        border: 1px solid #999;
    }

    input[type="text"] {
        width: 100%;
        padding: 5px;
        margin-bottom: 10px;
    }

    input[type="submit"] {
        background-color: #FF0000; 
        color: #FFF; 
        padding: 10px;
        border: none;
        cursor: pointer;
    }
</style>
</head>
<body>

<%
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String userName = request.getParameter("uname");
    String password = request.getParameter("pass");
%>

<h1>Customer Account Delete</h1>

<form action="delete" method="post">
    <table>
        <tr>
            <td>Customer ID</td>
            <td><input type="text" name="cusid" value="<%= id %>" readonly></td>
        </tr>
        <tr>
            <td>Name</td>
            <td><input type="text" name="name" value="<%= name %>" readonly></td>
        </tr>
        <tr>
            <td>Email</td>
            <td><input type="text" name="email" value="<%= email %>" readonly></td>
        </tr>
        <tr>
            <td>Phone number</td>
            <td><input type="text" name="phone" value="<%= phone %>" readonly></td>
        </tr>
        <tr>
            <td>User name</td>
            <td><input type="text" name="uname" value="<%= userName %>" readonly></td>
        </tr>
    </table>
    <br>
    <input type="submit" name="submit" value="Delete My Account">
</form>

</body>
</html>