<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Submit a Quote</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #333;
            color: #fff;
            font-family: 'Arial', sans-serif;
        }

        .form-container {
            text-align: center;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #444;
        }

        label {
            display: block;
            margin-bottom: 10px;
            color: #fff;
        }

        input[type="number"],
        input[type="text"],
        textarea {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
            border-radius: 5px;
        }

        input[type="submit"],
        input[type="button"] {
            background-color: #007BFF;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 10px;
        }

        a {
            text-decoration: none;
            color: #007BFF;
            display: block;
            margin-top: 10px;
        }

        a:hover {
            color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h1>Submit a Quote</h1>
        <form action="submitQuote" method="post">
            <label for="price">Price:</label>
            <input type="number" name="price" id="price" step="1.00" required><br>
            <label for="timeframe">Time Frame:</label>
            <input type="text" name="timeframe" id="timeframe" required><br>
            <label for="note">Note:</label>
            <textarea name="note" id="note" required></textarea><br>
            <input type="submit" value="Submit">
            <input type="button" value="Back" onclick="window.location.href='activitypage.jsp'">
        </form>
    </div>
</body>
</html>
