<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Delete My Account</title>

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

        input[type="button"],
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

        input[type="button"]:hover,
        input[type="submit"]:hover {
            background-color: #0A417D;
        }
    </style>

</head>

<body>

<nav>
    <ul>
        <li><a href="homepage.jsp">Home</a></li>
        <li class="active"><a href="useraccount.jsp">My Account</a></li>
        <li><a href="search.jsp">Patients</a></li>
    </ul>
</nav>

<%
String id = request.getParameter("id");
String name = request.getParameter("name");
String email = request.getParameter("email");
String phone = request.getParameter("phone");
String userName = request.getParameter("uname");
String password = request.getParameter("pass");
String department = request.getParameter("department");
String gender = request.getParameter("gender");
String speciality = request.getParameter("speciality");
String licencenumber = request.getParameter("licencenumber");
String address = request.getParameter("address");
String shift = request.getParameter("shift");
String appointmentfee = request.getParameter("appointmentfee");
String consultationroom = request.getParameter("consultationroom");
%>

<form action="DeleteDoctorServlet" method="post">
    <h1>Delete My Account</h1>

    <table>
        <tr>
            <td>Doctor ID</td>
            <td>
                <input type="text" name="docid" value="<%= id %>" readonly><br>
            </td>
        </tr>
        <tr>
            <td>Name</td>
            <td>
                <input type="text" name="name" value="<%= name %>" readonly><br>
            </td>
        </tr>
        <tr>
            <td>Email</td>
            <td>
                <input type="text" name="email" value="<%= email %>" readonly><br>
            </td>
        </tr>
        <tr>
            <td>Phone number</td>
            <td>
                <input type="text" name="phone" value="<%= phone %>" readonly><br>
            </td>
        </tr>
        <tr>
            <td>User name</td>
            <td>
                <input type="text" name="uname" value="<%= userName %>" readonly><br>
            </td>
        </tr>
        <tr>
            <td>Password</td>
            <td>
                <input type="password" name="pass" value="<%= password %>" readonly><br>
            </td>
        </tr>
        <tr>
            <td>Department</td>
            <td>
                <input type="text" name="department" value="<%= department %>" readonly><br>
            </td>
        </tr>
        <tr>
            <td>Gender</td>
            <td>
                <input type="text" name="gender" value="<%= gender %>" readonly><br>
            </td>
        </tr>
        <tr>
            <td>Speciality</td>
            <td>
                <input type="text" name="speciality" value="<%= speciality %>" readonly><br>
            </td>
        </tr>
        <tr>
            <td>Licence Number</td>
            <td>
                <input type="text" name="licencenumber" value="<%= licencenumber %>" readonly><br>
            </td>
        </tr>
        <tr>
            <td>Address</td>
            <td>
                <input type="text" name="address" value="<%= address %>" readonly><br>
            </td>
        </tr>
        <tr>
            <td>Shift</td>
            <td>
                <input type="text" name="shift" value="<%= shift %>" readonly><br>
            </td>
        </tr>
        <tr>
            <td>Appointment Fee</td>
            <td>
                <input type="text" name="appointmentfee" value="<%= appointmentfee %>" readonly><br>
            </td>
        </tr>
        <tr>
            <td>Consultation Room</td>
            <td>
                <input type="text" name="consultationroom" value="<%= consultationroom %>" readonly><br>
            </td>
        </tr>
    </table>

    <input type="submit" name="submit" value="Delete My Account"><br>
</form>

<br>
<br>
<br>

<footer>
    <p>&copy; 2023 By W.U.Malmi</p>
</footer>

</body>

</html>
