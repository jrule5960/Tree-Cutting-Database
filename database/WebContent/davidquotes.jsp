<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Quotes</title>
    <style>
        body {
            background-color: #f4f4f4;
            color: #333;
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #333;
            color: white;
        }

        form {
            margin-top: 20px;
        }

        input[type="submit"] {
            background-color: #333;
            color: #FFF;
            padding: 8px 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #555;
        }

        h1, h2 {
            text-align: center;
            color: #007BFF;
            margin-bottom: 10px;
        }
    </style>
</head>

<body>
    <form action="main" method="post">
        <table cellpadding="5">
            <tr>
                <td colspan="2">
                    <input type="submit" value="Back">
                </td>
            </tr>
        </table>
    </form>

    <h1>${firstName} Quotes</h1>

    <table id="openQuotes" name="openQuotes">
        <caption><h2>List of Open Quotes</h2></caption>
        <tr>
            <th>Quote ID</th>
            <th>Email</th>
            <th>Price</th>
            <th>Timeframe</th>
            <th>Note</th>
            <th>Status</th>
            <th>Current</th>
            <th>Reply</th>
        </tr>
        <c:forEach var="quote" items="${listOpenQuote}">
            <form action="reviewQuote" id="${quote.quoteId}" method="post">
                <tr>
                    <td><input readonly value="${quote.quoteId}" type="text" name="quoteId" id="quoteId" required></td>
                    <td>${quote.clientEmail}</td>
                    <td>${quote.price}</td>
                    <td>${quote.timeFrame}</td>
                    <td>${quote.note}</td>
                    <td>${quote.status}</td>
                    <td>${quote.current}</td>
                    <td><input type="submit" value="Review Request"></td>
                </tr>
            </form>
        </c:forEach>
    </table>

    <table>
        <caption><h2>List of Requested Quotes</h2></caption>
        <tr>
            <th>Quote ID</th>
            <th>Email</th>
            <th>Note</th>
            <th>Status</th>
            <th>Review</th>
        </tr>

        <c:forEach var="quote" items="${listRequestedQuote}">
            <form action="reviewRequest" method="post">
                <tr>
                    <td><input readonly value="${quote.quoteId}" type="text" name="requestId" id="requestId" required></td>
                    <td>${quote.clientEmail}</td>
                    <td>${quote.note}</td>
                    <td>${quote.status}</td>
                    <td><input type="submit" value="Review Request"></td>
                </tr>
            </form>
        </c:forEach>
    </table>

    <table id="acceptedQuotes">
        <caption><h2>List of Accepted Quotes</h2></caption>
        <tr>
            <th>Quote ID</th>
            <th>Email</th>
            <th>Price</th>
            <th>Timeframe</th>
            <th>Note</th>
            <th>Status</th>
        </tr>
        <c:forEach var="quote" items="${listAcceptedQuote}">
            <tr>
                <td>${quote.quoteId}</td>
                <td>${quote.clientEmail}</td>
                <td>${quote.price}</td>
                <td>${quote.timeFrame}</td>
                <td>${quote.note}</td>
                <td>${quote.status}</td>
            </tr>
        </c:forEach>
    </table>

    <table id="rejectedQuotes">
        <caption><h2>List of Rejected Quotes</h2></caption>
        <tr>
            <th>Quote ID</th>
            <th>Email</th>
            <th>Price</th>
            <th>Timeframe</th>
            <th>Note</th>
            <th>Status</th>
        </tr>
        <c:forEach var="quote" items="${listRejectedQuote}">
            <tr>
                <td>${quote.quoteId}</td>
                <td>${quote.clientEmail}</td>
                <td>${quote.price}</td>
                <td>${quote.timeFrame}</td>
                <td>${quote.note}</td>
                <td>${quote.status}</td>
            </tr>
        </c:forEach>
    </table>

    <script>
        function replyButton() {
            var reply = document.createElement("input");
            reply.setAttribute("type", "submit");
            reply.setAttribute("value", "Review Request")

            var table = document.getElementById("openQuotes");
            var r = 1; //start counting rows in table
            while (row = table.rows[r++]) {
                var c = 7; //start counting columns in row
                cell = row.cells[7];
                if (row.cells[6].innerText != ("davidsmith@treecutters.com")) {
                    row.cells[7].innerHTML = 'Awaiting Response'; // do sth with cell
                }
            }
        }
        replyButton();

        function requestQuotes() {
            var table = document.getElementById("requestQuotes");

        }
        requestQuotes();

    </script>
</body>
</html>
