<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Review Request</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            height: 100vh;
            margin: 0;
            background-color: #282c36;
            color: #fff;
            font-family: 'Arial', sans-serif;
        }

        form {
            text-align: center;
            padding: 20px;
            border: 1px solid #555;
            border-radius: 5px;
            background-color: #444;
            width: 80%;
            margin: 20px auto;
        }

        input[type="submit"] {
            background-color: #007BFF;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 10px;
            margin-right: 10px;
        }

        h1, p {
            color: #007BFF;
            margin-top: 20px;
        }

        table {
            margin: 20px auto;
            border-collapse: collapse;
            width: 100%;
        }

        td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: center;
            background-color: #333;
            color: #fff;
        }

        input[type="text"] {
            width: calc(100% - 16px);
            padding: 8px;
            margin: 5px 0;
            display: inline-block;
            border: none;
            box-sizing: border-box;
            border-radius: 5px;
            background-color: #444;
            color: #fff;
        }

        .buttons-container {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>

<h1>Review Request</h1>
<p>Here is the submitted request:</p>

<form name="request" id="request" method="post">
    <table id="treeTable">
        <tr>
            <td>Quote:  <input readonly value="${listQuote.quoteId}" type="text" name="quoteId" id="quoteId" required></td>
        </tr>
        <tr>
            <td>Client:  <input size="50" readonly value="${listQuote.clientEmail}" type="text" name="clientEmail" id="clientEmail" required></td>
        </tr>
        <c:forEach var="tree" items="${listTrees}">
            <tr>
                <td>Tree</td>
            </tr>
            <tr>
                <td>Size: ${tree.size} ft</td>
            </tr>
            <tr>
                <td>Height: ${tree.height} ft</td>
            </tr>
            <tr>
                <td>Distance: ${tree.distance} ft</td>
            </tr>
            <tr>
                <td> <br></td>
            </tr>
        </c:forEach>
    </table>
    <table id="quoteNote">
        <tr>
            <td>Note: ${listQuote.note}</td>
        </tr>
    </table>
    <div class="buttons-container">
        <input type="submit" name="deny" onclick="initial1()" value="Deny" >
        <input type="submit" name="inital" onclick="initial()" value="Send Initial Quote" >
    </div>
</form>

<script>
    function initial1() {
        document.getElementById('request').action = "denyQuote"; 
        console.log("deny");
    }
    
    function initial() {
        document.getElementById('request').action = "sendQuote"; 
        console.log("accept");
    }
</script>

</body>
</html>
