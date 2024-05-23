<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="abcdstyle.css">
</head>
<body>
<a href="abcdhome.jsp"><button>home</button></a>
<c:forEach var="cus" items="${cusdetails}">

   <c:set var="name" value="${cus.name}"/>
   <c:set var="email" value="${cus.email}"/>
   <c:set var="number" value="${cus.number}"/>
   <c:set var="username" value="${cus.username}"/>
   <c:set var="password" value="${cus.password}"/>
   
   
   <h4>name</h4>${cus.name}
   <h4>email</h4>${cus.email}
   <h4>number</h4>${cus.number}
   <h4>username</h4>${cus.username}
   <h4>password</h4>${cus.password}
   
</c:forEach>

<c:url value="abcdupdateadmin.jsp" var="cusupdate">
<c:param name="name" value="${name}"/>
<c:param name="email" value="${email}"/>
<c:param name="number" value="${number}"/>
<c:param name="username" value="${username}"/>
<c:param name="password" value="${password}"/>
</c:url><br><br>
<a href="${cusupdate}">
<input type="button"  name="update" value="update my data" class="but">
</a>


</body>
</html>