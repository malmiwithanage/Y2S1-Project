 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Doctor Login</title>
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        nav {
            background-color: rgba(51, 51, 51, 0.7);
            overflow: hidden;
        }

        nav ul {
            list-style-type: none;
        }

        nav ul li {
            float: left;
        }

        nav ul li a {
            display: block;
            color: #fff;
            text-decoration: none;
            padding: 20px 40px;
        }

        nav ul li a:hover {
            background-color: rgba(51, 51, 51, 0.75);
        }

        nav ul {
            text-align: center;
        }

        nav ul li {
            margin-right: 20px;
        }

        nav {
            position: fixed;
            top: 0;
            width: 100%;
        }
        
        h1 {
            color: #fff;
        }

        body {
            background-image: url('images/image09.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            font-family: Arial, sans-serif;
        }

        .container {
            max-width: 400px;
            margin: 15% 0 0 55%; /* Adjust the left margin (10%) as needed */
            padding: 20px;
            background-color: rgba(51, 51, 51, 0.7);
            border-radius: 5px;
            
            text-align: center;
        }

        h1 {
            font-size: 24px;
        }

        form {
            margin-top: 20px;
        }

        input[type="text"],
        input[type="password"] {
            width: 94%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="submit"] {
            width: 100%;
            background-color: #185AA3;
            color: #fff;
            padding: 10px;
            margin: 20px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0A417D;
        }

        footer {
            position: fixed;
            bottom: 0;
            width: 100%;
            background-color: rgba(51, 51, 51, 0.7);
            color: #fff;
            text-align: center;
            padding: 10px 0;
        }

        footer p {
            margin: 0;
        }
        
        p {
            color: #fff;
        }
        
        .active a {
    		background-color: rgba(51, 51, 51, 1); 
    		color: #fff; 
		}
		
    </style>
</head>
<body>
    <nav>
        <ul>
            <li class="active"><a href="#">Home</a></li>
            <li><a href="#">About</a></li>
            <li><a href="#">Services</a></li>
            <li><a href="#">Portfolio</a></li>
            <li><a href="#">Contact</a></li>
        </ul>
    </nav>

    <div class="container">
        <h1>Doctor Login</h1>
        <form action="log" method="post">
            <input type="text" id="uid" name="uid" placeholder="User Name" required><br><br>
            <input type="password" id="pass" name="pass" placeholder="Password" required>
            <input type="submit" name="submit" value="Login">
        </form>
        
        <p>or</p>
        
        <form action="doctorinsert.jsp" method="post">
    		<input type="submit" name="create" value="Create Account">
		</form>
        
        
    
    </div>

    <footer>
        <p>&copy; 2023 By W.U.Malmi</p>
    </footer>
</body>
</html>
