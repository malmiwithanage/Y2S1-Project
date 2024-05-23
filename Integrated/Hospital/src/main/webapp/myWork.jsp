<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
               

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Receptionist Duties</title>

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
        
        .active a {
    		background-color: rgba(51, 51, 51, 1); 
    		color: #fff; 
		}

        body {
            background-image: url('img/image03.jpg');
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
<body> <center>
    <div class="container">
                            <h1>Home</h1>
                            
                             <h2>
        <a href="Receptionist1.jsp" >
        <button id="registerButton">Register Insertion</button>
        </a>
        </h2>
        
       
  
        
        <h2>
        <a href="Appointmentlogin.jsp"> 
        <button id="updateAppointmentButton">Update Appointment</button>
        </a>
        </h2>
        
        <h2>
        <a href="DeletePatient.jsp">
        <button id="deletePatientButton">Delete Patient Records</button>
        </a>
        </h2>
        
    </div> </center>

    <script>
        const registerButton = document.getElementById('registerButton');
        const updateAppointmentButton = document.getElementById('updateAppointmentButton');
        const deletePatientButton = document.getElementById('deletePatientButton');

    

        updateAppointmentButton.addEventListener('click', function () {
            
          
        });

        deletePatientButton.addEventListener('click', function () {
         
        	
        });
        
    </script>
    
</body>
</html>
                

