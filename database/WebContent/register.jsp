<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Registration</title>
    <style>
        body {
            background-color: #f4f4f4;
            color: #333;
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            color: #007BFF;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #007BFF;
            color: white;
        }

        form {
            margin-top: 20px;
            text-align: center;
        }

        input[type="text"],
        input[type="password"],
        input[type="submit"],
        select {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
            border-radius: 5px;
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
    <center>
        <h1>Welcome to Registration Page!</h1>
    </center>

    <div align="center">
        <p>${errorOne}</p>
        <p>${errorTwo}</p>
        <form action="register">
            <table border="1" cellpadding="5">
                <tr>
                    <th>Username(email): </th>
                    <td colspan="3">
                        <input type="text" name="email" value="example@gmail.com" onfocus="this.value=''" required>
                    </td>
                </tr>
                <tr>
                    <th>First Name: </th>
                    <td colspan="3">
                        <input type="text" name="firstName" value="First Name" onfocus="this.value=''" required>
                    </td>
                </tr>
                <tr>
                    <th>Last Name: </th>
                    <td colspan="3">
                        <input type="text" name="lastName" value="Last Name" onfocus="this.value=''" required>
                    </td>
                </tr>
                <tr>
                    <th>Credit Card Number: </th>
                    <td colspan="3">
                        <input type="text" name="creditCardNumber" value="XXXX-XXXX-XXXX-XXXX" onfocus="this.value=''" required>
                    </td>
                </tr>
                <tr>
                    <th>Phone Number: </th>
                    <td colspan="3">
                        <input type="text" name="phoneNumber" value="XXX-XXX-XXXX" onfocus="this.value=''" required>
                    </td>
                </tr>
                <tr>
                    <th>Role: </th>
                    <td colspan="3">
                        <select name="role">
                            <option value="David Smith">Contractor (David Smith)</option>
                            <option value="Client">Client</option>
                            <option value="Admin Root">Root Admin</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <th>Street Number: </th>
                    <td colspan="3">
                        <input type="text" name="adress_street_num" value="Street Number" onfocus="this.value=''" required>
                    </td>
                </tr>
                <tr>
                    <th>Street: </th>
                    <td colspan="3">
                        <input type="text" name="adress_street" value="Street Name" onfocus="this.value=''" required>
                    </td>
                </tr>
                <tr>
                    <th>City: </th>
                    <td colspan="3">
                        <input type="text" name="adress_city" value="City" onfocus="this.value=''" required>
                    </td>
                </tr>
                <tr>
                    <th>State: </th>
                    <td colspan="3">
                        <input type="text" name="adress_state" value="MI" onfocus="this.value=''" required>
                    </td>
                </tr>
                <tr>
                    <th>Zip Code: </th>
                    <td colspan="3">
                        <input type="text" name="adress_zip_code" value="48101" onfocus="this.value=''" required>
                    </td>
                </tr>
                <tr>
                    <th>Password: </th>
                    <td colspan="3"> 
                        <input type="password" name="password" value="password" onfocus="this.value=''" required>
                    </td>
                </tr>
                <tr>
                    <th>Password Confirmation: </th>
                    <td colspan="3">
                        <input type="password" name="confirmation" value="password" onfocus="this.value=''" required>
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        <input type="submit" value="Register">
                    </td>
                </tr>
            </table>
            <a href="login.jsp" target="_self">Return to Login Page</a>
        </form>
    </div>
</body>
</html>
