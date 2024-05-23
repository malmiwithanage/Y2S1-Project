<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Create Account</title>

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
            background-image: url('images/image11.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            font-family: Arial, sans-serif;
        }

        .container {
            max-width: 400px;
            margin: 10% 0 0 55%;
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

        .active a {
            background-color: rgba(51, 51, 51, 1);
            color: #fff;
        }
    </style>
</head>

<body>

<nav> <!-- Navigation Bar -->
    <ul>
        <li><a href="homepage.jsp">Home</a></li>
        <li class="active"><a href="useaccount.jsp">My Account</a></li>
        <li><a href="search.jsp">Patients</a></li>
    </ul>
</nav>

<div class="container">
    <h1>Create New Account</h1> <!-- Create new account form for doctor -->
    <form action="DoctorInsert" method="post">
        <input type="text" name="name" placeholder="Name"><br>
        <input type="text" name="email" placeholder="Email"><br>
        <input type="text" name="phone" placeholder="Phone Number"><br>
        <input type="text" name="uid" placeholder="User Name"><br>
        <input type="password" name="psw" placeholder="Password"><br>
        <input type="text" name="department" placeholder="Department"><br>
        <input type="text" name="gender" placeholder="Gender"><br>
        <input type="text" name="speciality" placeholder="Speciality"><br>
        <input type="text" name="licencenumber" placeholder="License Number"><br>
        <input type="text" name="address" placeholder="Address"><br>
        <input type="text" name="shift" placeholder="Shift"><br>
        <input type="text" name="appointmentfee" placeholder="Appointment Fee"><br>
        <input type="text" name="consultationroom" placeholder="Consultation Room"><br>
        <input type="submit" name="submit" value="Create Account">
    </form>
</div>

<br>
<br>
<br>

<footer> <!-- Footer -->
    <p>&copy; 2023 By W.U.Malmi</p>
</footer>

</body>

</html>
