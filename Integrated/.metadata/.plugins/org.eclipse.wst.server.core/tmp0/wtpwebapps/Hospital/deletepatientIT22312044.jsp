<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Delete Patient Account</title>

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
    <!-- Navigation Bar -->
    <ul>
        <li><a href="homepage.jsp">Home</a></li>
        <li><a href="useraccount.jsp">My Account</a></li>
        <li class="active"><a href="search.jsp">Patients</a></li>
    </ul>
</nav>

<%
String id = request.getParameter("id");
String name = request.getParameter("name");
String email = request.getParameter("email");
String phone = request.getParameter("phone");
String userName = request.getParameter("uname");
String password = request.getParameter("pass");
String address = request.getParameter("address");
String gender = request.getParameter("gender");
String dateofbirth = request.getParameter("dateofbirth");
String emergencycontact = request.getParameter("emergencycontact");
String medicalhistory = request.getParameter("medicalhistory");
String diagnosis = request.getParameter("diagnosis");
String allergies = request.getParameter("allergies");
String prescriptions = request.getParameter("prescriptions");
%>

<form action="DeletePatientServlet" method="post">
    <!-- Display patient details -->
    <h1>Delete Patient Account</h1>

    <table>
        <tr>
            <td>Patient ID</td>
            <td>
                <input type="text" name="patid" value="<%= id %>" readonly><br>
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
            <td>Address</td>
            <td>
                <input type="text" name="address" value="<%= address %>" readonly><br>
            </td>
        </tr>
        <tr>
            <td>Gender</td>
            <td>
                <input type="text" name="gender" value="<%= gender %>" readonly><br>
            </td>
        </tr>
        <tr>
            <td>Date of Birth</td>
            <td>
                <input type="text" name="dateofbirth" value="<%= dateofbirth %>" readonly><br>
            </td>
        </tr>
        <tr>
            <td>Emergency Contact</td>
            <td>
                <input type="text" name="emergencycontact" value="<%= emergencycontact %>" readonly><br>
            </td>
        </tr>
        <tr>
            <td>Medical History</td>
            <td>
                <input type="text" name="medicalhistory" value="<%= medicalhistory %>" readonly><br>
            </td>
        </tr>
        <tr>
            <td>Diagnosis</td>
            <td>
                <input type="text" name="diagnosis" value="<%= diagnosis %>" readonly><br>
            </td>
        </tr>
        <tr>
            <td>Allergies</td>
            <td>
                <input type="text" name="allergies" value="<%= allergies %>" readonly><br>
            </td>
        </tr>
        <tr>
            <td>Prescriptions</td>
            <td>
                <input type="text" name="prescriptions" value="<%= prescriptions %>" readonly><br>
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
