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
    
    #registration-form {
        width: 300px;
        margin: 0 auto;
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
        background-color: #f9f9f9;
    }

    label {
        display: block;
        margin-bottom: 10px;
        font-weight: bold;
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
	<form action="insert" method="post" id="registration-form">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required><br>
        <label for="email">Email:</label>
        <input type="text" id="email" name="email" required><br>
        <label for="phone">Phone Number:</label>
        <input type="text" id="phone" name="phone" required><br>
        <label for="uid">User Name:</label>
        <input type="text" id="uid" name="uid" required><br>
        <label for="psw">Password:</label>
        <input type="password" id="psw" name="psw" required><br>
        <input type="submit" name="submit" value="Create Customer">
    </form>
</body>
</html>