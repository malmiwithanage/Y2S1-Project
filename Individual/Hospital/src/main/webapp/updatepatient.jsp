<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Patient Details</title>

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
        
        .active a {
    		background-color: rgba(51, 51, 51, 1); 
    		color: #fff; 
		}

        body {
            background-image: url('images/image10.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            font-family: Arial, sans-serif;
        }

		h1 {
            font-size: 24px;
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
    
		table {
    		border-collapse: collapse;
    		width: 100%;
    		margin-top: 10px;
		}

		th {
    		background-color: rgba(51, 51, 51, 0.7);
    		text-align: center;
    		padding: 10px;
		}

		td {
    		border: 1px solid #ddd;
    		padding: 10px;
    		text-align: center;
		}

		tr {
    		background-color: rgba(51, 51, 51, 0.7);
    		height: 60px;
    		color: #fff;
		}

		tr:hover {
    		background-color: rgba(51, 51, 51, 0.75);
		}

		h1 {
    		font-size: 24px; 
    		text-align: left; 
    		color: #333; 
    		margin-top: 70px; 
    		margin-left: 10px;
		}
        
        input[type="button"] {
            width: 150px;
            background-color: #185AA3;
            color: #fff;
            padding: 10px;
            margin: 20px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="button"]:hover {
            background-color: #0A417D;
        }
        
        input[type="submit"] {
            width: 150px;
            background-color: #185AA3;
            color: #fff;
            padding: 10px;
            margin: 20px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0A417D;
        }
        
    </style>

</head>
<body>

<nav>
        <ul>
            <li><a href="#">Home</a></li>
            <li><a href="#">About</a></li>
            <li><a href="#">Services</a></li>
            <li><a href="#">Portfolio</a></li>
            <li><a href="#">Contact</a></li>
            <li ><a href="#">My Account</a></li>
            <li class="active"><a href="#">Patients</a></li>
        </ul>
    </nav>

<%
String id = request.getParameter("id");
String name = request.getParameter("name");
String email = request.getParameter("email");
String phone = request.getParameter("phone");
String userName = request.getParameter("uname");
String password = request.getParameter("pass");
%>


<form action="UpdatePatientServlet" method="post">
<h1>Update Patient Details</h1>

<table>
    <tr>
        <td>Patient ID</td>
        <td>
            <input type="text" name="pid" value="<%= id %>" readonly><br>
        </td>
    </tr>
    <tr>
        <td>Name</td>
        <td>
            <input type="text" name="name" value="<%= name %>"><br>
        </td>
    </tr>
    <tr>
        <td>Email</td>
        <td>
            <input type="text" name="email" value="<%= email %>"><br>
        </td>
    </tr>
    <tr>
        <td>Phone number</td>
        <td>
            <input type="text" name="phone" value="<%= phone %>"><br>
        </td>
    </tr>
    <tr>
        <td>User name</td>
        <td>
            <input type="text" name="uname" value="<%= userName %>"><br>
        </td>
    </tr>
    <tr>
        <td>Password</td>
        <td>
            <input type="password" name="pass" value="<%= password %>"><br>
        </td>
    </tr>
</table>


<input type="submit" name="submit" value="Update Patient Data"><br>
</form>

<footer>
        <p>&copy; 2023 By W.U.Malmi</p>
    </footer>
    
</body>
</html>