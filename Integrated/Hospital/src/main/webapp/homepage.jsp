<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
<style>
body {
    background-image: url('images/image12.jpg');
    background-size: cover;
    background-repeat: no-repeat;
    font-family: 'Arial', sans-serif;
    margin: 0;
    padding: 0;
}

.container {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    flex-direction: column;
}

button {
    font-family: 'Arial', sans-serif;
    font-size: 18px;
    margin: 10px;
    padding: 15px 20px;
    border: none;
    border-radius: 8px;
    background-color: #185AA3;
    color: #fff;
    cursor: pointer;
}

button:hover {
    background-color: #0A417D;
}

#landing {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    margin-top: 20px;
}

#logo {
    width: 100px;
    height: auto;
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
</style>
</head>
<body>
<div class="container">
    <img id="logo" src="images/logo.png" alt="Logo">
    <div id="landing">
        <!-- Home page for all users -->
        <a href="abcdlogin.jsp"><button>Admin</button></a>
        <a href="doctorlogin.jsp"><button>Doctor</button></a>
        <a href="login.jsp"><button>Patient</button></a>
        <a href="Receptionist1.jsp"><button>Register Receptionist</button></a>
    </div>
</div>
</body>
<footer>
    <!-- Footer -->
    <p>&copy; 2023 By W.M.Y.YASASVIN</p>
</footer>
</html>
