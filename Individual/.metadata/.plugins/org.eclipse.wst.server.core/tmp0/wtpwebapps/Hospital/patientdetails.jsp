<%@page import="com.doctor.Patient"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient Details</title>

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
            <li ><a href="#">My Account</a></li>
            <li class="active"><a href="#">Patients</a></li>
        </ul>
    </nav>

<table>
	<c:forEach var="pat" items="${patDetails}">
	
	<c:set var="id" value="${pat.id}"/>
	<c:set var="name" value="${pat.name}"/>
	<c:set var="email" value="${pat.email}"/>
	<c:set var="phone" value="${pat.phone}"/>
	<c:set var="username" value="${pat.userName}"/>
	<c:set var="password" value="${pat.password}"/>
	
        <h1>Patient Details</h1>
        <table>
            <tr>
                <td>Patient ID</td>
                <td>${pat.id}</td>
            </tr>
            <tr>
                <td>Patient Name</td>
                <td>${pat.name}</td>
            </tr>
            <tr>
                <td>Patient Email</td>
                <td>${pat.email}</td>
            </tr>
            <tr>
                <td>Patient Phone</td>
                <td>${pat.phone}</td>
            </tr>
            <tr>
                <td>Patient User Name</td>
                <td>${pat.userName}</td>
            </tr>
            <tr>
                <td>Patient Password</td>
                <td>${pat.password}</td>
            </tr>
        </table>
    
	</c:forEach>
	</table>
	

    <c:url value="updatepatient.jsp" var="patupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="uname" value="${username}"/>
		<c:param name="pass" value="${password}"/>
	</c:url>
    
    <a href="${patupdate}">
    	<input type="button" name="update" value="Add Patient Details">
    </a>
    
    <c:url value="deletepatient.jsp" var="patdelete">
    	<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="uname" value="${username}"/>
		<c:param name="pass" value="${password}"/>
    </c:url>
    
    <a href="${patdelete}">
    <input type="button" name="delete" value="Delete Patient Account">
    </a>
    
    <footer>
        <p>&copy; 2023 By W.U.Malmi</p>
    </footer>
    
    </body>
</html>