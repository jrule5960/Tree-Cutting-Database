<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Activity Page</title>
    <style>
        body {
            background-color: #ADD8E6;
            color: #333;
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            color: #007BFF;
        }

        .container {
            max-width: 800px;
            margin: 2em auto;
            padding: 2em;
            background-color: #FFF;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        a {
            display: block;
            text-decoration: none;
            background-color: #007BFF;
            color: #FFF;
            padding: 1em;
            border-radius: 5px;
            text-align: center;
        }

        a:hover {
            background-color: #0056b3;
        }

        p {
            margin-top: 20px;
            text-align: center;
        }

        .view-quotes {
            display: block;
            margin: 0 auto;
            padding: 1em;
            background-color: #007BFF;
            color: #FFF;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-align: center;
        }

        .view-quotes:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to the Activity Page</h1>
        <p>Welcome ${sessionScope.userName}!</p>
        
        <form action="viewQuotes">
            <center>
                <a href="login.jsp" target="_self">Logout</a><br><br>
                <input type="submit" value="View Quotes" class="view-quotes"/><br><br>
            </center>
        </form>
    </div>
</body>
</html>
