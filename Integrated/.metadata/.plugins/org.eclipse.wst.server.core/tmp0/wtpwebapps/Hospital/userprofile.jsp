<%@page import="com.model.Doctor"%>
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
<style type="text/css">

     body {
        background-image: https://th.bing.com/th/id/R.b7b2b12737d54643d25a1bb803797f79?rik=g10xVYkL%2bkCV8w&pid=ImgRaw&r=0;
        background-size: cover; 
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
        padding: 10px;
        border: 1px solid #999;
    }

    input[type="button"] {
        background-color: #007BFF;
        color: #fff;
        padding: 10px 20px;
        border: none;
        border-radius: 3px;
        cursor: pointer;
        text-decoration: none;
        display: inline-block;
        margin-top: 10px;
    }

    input[type="button"]:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
    <table>
        <c:forEach var="cus" items="${userDetails}">
            <tr>
                <td>Customer ID</td>
                <td>${cus.id}</td>
            </tr>
            <tr>
                <td>Customer Name</td>
                <td>${cus.name}</td>
            </tr>
            <tr>
                <td>Customer Email</td>
                <td>${cus.email}</td>
            </tr>
            <tr>
                <td>Customer Phone</td>
                <td>${cus.phone}</td>
            </tr>
            <tr>
                <td>Customer User Name</td>
                <td>${cus.userName}</td>
            </tr>
            <tr>
                <td>Customer Password</td>
                <td>${cus.password}</td>
            </tr>
        </c:forEach>
    </table>

    <c:url value="update.jsp" var="cusupdate">
        <c:param name="id" value="${cus.id}" />
        <c:param name="name" value="${cus.name}" />
        <c:param name="email" value="${cus.email}" />
        <c:param name="phone" value="${cus.phone}" />
        <c:param name="uname" value="${cus.userName}" />
        <c:param name="pass" value="${cus.password}" />
    </c:url>
    
    

    <a href="${cusupdate}">
        <input type="button" name="update" value="Update My Data">
    </a>
    <br>

    <c:url value="delete.jsp" var="cusdelete">
        <c:param name="id" value="${cus.id}" />
        <c:param name="name" value="${cus.name}" />
        <c:param name="email" value="${cus.email}" />
        <c:param name="phone" value="${cus.phone}" />
        <c:param name="uname" value="${cus.userName}" />
        <c:param name="pass" value="${cus.password}" />
    </c:url>
    <a href="${cusdelete}">
        <input type="button" name="delete" value="Delete My Account">
    </a>
</body>
</html>