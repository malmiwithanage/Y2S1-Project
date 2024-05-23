<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">

 

paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
	}
	
	@charset "ISO-8859-1";

body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.container {
    background-color: #fff;
    border-radius: 8px;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
    text-align: center;
    padding: 30px;
    width: 400px;
}

h2 {
    margin: 0 0 20px;
    color: #333;
}

.form-group {
    text-align: left;
    margin: 20px 0;
}

label {
    display: block;
    font-weight: bold;
    color: #555;
}

input[type="text"],
input[type="email"],
input[type="tel"],
textarea,
select {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    margin-top: 5px;
}

button {
    background-color: #007BFF;
    color: #fff;
    padding: 12px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

button:hover {
    background-color: #0056b3;
}
	



</style>
</head>
<body>               
















              <form action="delete" method="post">
        Enter the ID of the row to delete:<input type="text" name="id">
                <input type="submit" value="Delete">
                 </form>


        

</body>
</html>