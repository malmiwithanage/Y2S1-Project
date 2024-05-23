<%@page import="com.doctor.Doctor"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

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
        
    </style>

</head>
<body>

<nav>
        <ul>
            <li ><a href="#">Home</a></li>
            <li><a href="#">About</a></li>
            <li><a href="#">Services</a></li>
            <li><a href="#">Portfolio</a></li>
            <li><a href="#">Contact</a></li>
            <li class="active"><a href="#">My Account</a></li>
            <li><a href="#">Patients</a></li>
        </ul>
    </nav>

<table>
	<c:forEach var="doc" items="${docDetails}">
	
	<c:set var="id" value="${doc.id}"/>
	<c:set var="name" value="${doc.name}"/>
	<c:set var="email" value="${doc.email}"/>
	<c:set var="phone" value="${doc.phone}"/>
	<c:set var="username" value="${doc.userName}"/>
	<c:set var="password" value="${doc.password}"/>
	<c:set var="department" value="${doc.department}"/>
	<c:set var="gender" value="${doc.gender}"/>
	<c:set var="speciality" value="${doc.speciality}"/>
	<c:set var="licencenumber" value="${doc.licencenumber}"/>
	<c:set var="address" value="${doc.address}"/>
	<c:set var="shift" value="${doc.shift}"/>
	<c:set var="appointmentfee" value="${doc.appointmentfee}"/>
	<c:set var="consultationroom" value="${doc.consultationroom}"/>
	
        <h1>My Personal Details</h1>
        <table>
            <tr>
                <td>ID</td>
                <td>${doc.id}</td>
            </tr>
            <tr>
                <td>Name</td>
                <td>${doc.name}</td>
            </tr>
            <tr>
                <td>Email</td>
                <td>${doc.email}</td>
            </tr>
            <tr>
                <td>Phone</td>
                <td>${doc.phone}</td>
            </tr>
            <tr>
                <td>User Name</td>
                <td>${doc.userName}</td>
            </tr>
            <tr>
                <td>Password</td>
                <td>${doc.password}</td>
            </tr>
            <tr>
                <td>Department</td>
                <td>${doc.department}</td>
            </tr>
            <tr>
                <td>Gender</td>
                <td>${doc.gender}</td>
            </tr>
            <tr>
                <td>Speciality</td>
                <td>${doc.speciality}</td>
            </tr>
            <tr>
                <td>License Number</td>
                <td>${doc.licencenumber}</td>
            </tr>
            <tr>
                <td>Address</td>
                <td>${doc.address}</td>
            </tr>
            <tr>
                <td>Shift</td>
                <td>${doc.shift}</td>
            </tr>
            <tr>
                <td>Appointment Fee</td>
                <td>${doc.appointmentfee}</td>
            </tr>
            <tr>
                <td>Consultation Room</td>
                <td>${doc.consultationroom}</td>
            </tr>
        </table>
    
	</c:forEach>
	</table>

    <c:url value="updatedoctor.jsp" var="docupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="uname" value="${username}"/>
		<c:param name="pass" value="${password}"/>
		<c:param name="department" value="${department}"/>
		<c:param name="gender" value="${gender}"/>
		<c:param name="speciality" value="${speciality}"/>
		<c:param name="licencenumber" value="${licencenumber}"/>
		<c:param name="address" value="${address}"/>
		<c:param name="shift" value="${shift}"/>
		<c:param name="appointmentfee" value="${appointmentfee}"/>
		<c:param name="consultationroom" value="${consultationroom}"/>
	</c:url>
    
    <a href="${docupdate}">
    	<input type="button" name="update" value="Update My Data">
    </a>
    
    <c:url value="deletedoctor.jsp" var="docdelete">
    	<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="uname" value="${username}"/>
		<c:param name="pass" value="${password}"/>
		<c:param name="department" value="${department}"/>
		<c:param name="gender" value="${gender}"/>
		<c:param name="speciality" value="${speciality}"/>
		<c:param name="licencenumber" value="${licencenumber}"/>
		<c:param name="address" value="${address}"/>
		<c:param name="shift" value="${shift}"/>
		<c:param name="appointmentfee" value="${appointmentfee}"/>
		<c:param name="consultationroom" value="${consultationroom}"/>
    </c:url>
    
    <a href="${docdelete}">
    <input type="button" name="delete" value="Delete My Account">
    </a>
    <br>
    <br>
    <br>
    
    <footer>
        <p>&copy; 2023 By W.U.Malmi</p>
    </footer>
    
    </body>
</html>