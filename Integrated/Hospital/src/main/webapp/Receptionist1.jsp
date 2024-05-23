<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">

  
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



	<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 text-center">Receptionist Regitration</p>

						<c:if test="${not empty sucMsg }">
							<p class="text-center text-success fs-3">${sucMsg}</p>
							<c:remove var="sucMsg" scope="session" />
						</c:if>

						<c:if test="${not empty errorMsg }">
							<p class="text-center text-danger fs-3">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
                                       <form action="user_register" method="post">
                  <div class="mb-3">
	<label class="form-label">Full Name</label> 
<input required name="fullname" type="text" class="form-control">
	</div>

                 <div class="mb-3">
	<label class="form-label">Email address</label> 
           <input required name="email" type="email" class="form-control">
							</div>
     
                <div class="mb-3">
	<label class="form-label">Password</label> 
    <input required name="password" type="password" class="form-control">
	</div>

<br>
<br>

            <button type="submit" class="btn bg-success text-white col-md-12">Register</button>
                                       
						
						
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>