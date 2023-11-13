<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login to Webpage</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 1em 0;
        }
        .container {
            margin: 2em auto;
            max-width: 600px;
            background-color: #fff;
            padding: 2em;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        form {
            margin-top: 1em;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 1em;
        }
        th, td {
            padding: 0.5em;
            text-align: left;
        }
        th {
            background-color: #333;
            color: white;
        }
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 0.5em;
            margin-bottom: 1em;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #333;
            color: white;
            padding: 0.5em 1em;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #555;
        }
        .register-button {
            display: block;
            width: 100%;
            padding: 0.5em;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            text-align: center;
            text-decoration: none;
            font-size: 16px;
            cursor: pointer;
        }
        .register-button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <header>
        <h1>Welcome to Login Page</h1>
    </header>
    <div class="container">
        <p>${loginFailedStr}</p>
        <form action="login" method="post">
            <table>
                <tr>
                    <th>Username (Email):</th>
                    <td>
                        <input type="text" name="email" autofocus required>
                    </td>
                </tr>
                <tr>
                    <th>Password:</th>
                    <td>
                        <input type="password" name="password" required>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="Login">
                    </td>
                </tr>
            </table>
        </form>
        <!-- Updated button -->
        <button class="register-button" onclick="window.location.href='register.jsp'">Register Here</button>
    </div>
</body>
</html>
