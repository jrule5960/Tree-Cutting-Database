<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Root page</title>
    <style>
        body {
            background-color: #282c36;
            color: white;
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
        }

        form {
            margin-top: 20px;
        }

        input[type="submit"],
        button {
            background-color: #007BFF;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 10px;
            font-size: 16px;
        }

        a {
            text-decoration: none;
            color: #007BFF;
            display: inline-block;
            margin-top: 10px;
            margin-right: 10px;
            font-size: 16px;
        }

        a:hover {
            color: #0056b3;
        }

        h1, h2 {
            color: #007BFF;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
        }

        th, td {
            border: 1px solid #555;
            padding: 10px;
            text-align: center;
        }

        caption {
            margin-bottom: 10px;
            font-size: 18px;
            font-weight: bold;
        }
    </style>
</head>
<body>

<div align="center">

    <form action="initialize">
        <input type="submit" value="Initialize the Database"/>
    </form>
    <form action="login.jsp" method="get">
        <button type="submit">Logout</button>
    </form>


    <div align="center">
        <table border="1" cellpadding="6">
            <caption><h2>List of all Users</h2></caption>
            <tr>
                <th>Role</th>
                <th>Email</th>
                <th>First name</th>
                <th>Last name</th>
                <th>Address</th>
                <th>Credit Card</th>
                <th>Phone Number</th>
                <th>Password</th>
            </tr>
            <c:forEach var="users" items="${listUser}">
                <tr style="text-align:center">
                    <td><c:out value="${users.role}" /></td>
                    <td><c:out value="${users.email}" /></td>
                    <td><c:out value="${users.firstName}" /></td>
                    <td><c:out value="${users.lastName}" /></td>
                    <td><c:out value="${users.adress_street_num} ${users.adress_street} ${users.adress_city} ${users.adress_state} ${users.adress_zip_code}" /></td>
                    <td><c:out value="${users.creditCard}" /></td>
                    <td><c:out value="${users.phoneNumber}" /></td>
                    <td><c:out value="${users.password}" /></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>

</body>
</html>
