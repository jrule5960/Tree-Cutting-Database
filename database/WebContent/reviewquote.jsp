<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Review Quote</title>
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

        a {
            text-decoration: none;
            color: #007BFF;
            display: inline-block;
            margin-top: 10px;
            margin-right: 10px;
        }

        a:hover {
            color: #0056b3;
        }

        h1 {
            color: #007BFF;
            margin-top: 20px;
        }

        p {
            color: #ddd;
        }

        table {
            margin: 20px auto;
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: center;
            background-color: #333;
            color: #fff;
        }

        input[type="text"] {
            width: 100%;
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

<h1>Review Quote</h1>
<p>Here is the submitted Quote:</p>

<form name="quote" id="quote" method="post">
    <table id="quoteNote">
        <tr>
            <td>Quote:  <input readonly value="${listQuote.quoteId}" type="text" name="quoteId" id="quoteId" required></td>
        </tr>
        <tr>
            <td>Client:  <input size="50" readonly value="${listQuote.clientEmail}" type="text" name="clientEmail" id="clientEmail" required></td>
        </tr>
        <tr>
            <td>Price: ${listQuote.price}</td>
        </tr>
        <tr>
            <td>Time Frame: ${listQuote.timeFrame}</td>
        </tr>
        <tr>
            <td>Note: ${listQuote.status}</td>
        </tr>
    </table>
    <br>

    <div class="buttons-container">
        <input type="submit" value="Back">
        <input type="submit" name="accept" onclick="initial2()" value="Accept" >
        <input type="submit" name="deny" onclick="initial1()" value="Deny" >
        <input type="submit" name="inital" onclick="initial()" value="Resubmit" >
    </div>
</form>

<script>
    function initial2() {
        document.getElementById('quote').action = "acceptQuote"; 
        console.log("accept");
    }
    
    function initial1() {
        document.getElementById('quote').action = "denyQuote"; 
        console.log("deny");
    }
    
    function initial() {
        document.getElementById('quote').action = "sendQuote"; 
        console.log("reply");
    }
</script>

</body>
</html>
