<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<%-- Import necessary Java classes --%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Contractor DAVID'S Page</title>
</head>
<body>
    <center>
        <h1>Welcome David! You have been successfully logged in as David Smith</h1>
    </center>

    <center>
        <a href="login.jsp" target="_self">Logout</a><br><br>
        <p>Here is where the Contractor dashboard will be</p>
        
        <%-- Retrieve and display tree quotes --%>
        <table border="1">
            <caption>Tree Quotes</caption>
            <tr>
                <th>Quote ID</th>
                <th>Tree Size</th>
                <th>Tree Height</th>
                <th>Location</th>
                <th>Near House</th>
                <th>Note</th>
                <th>Status</th>
            </tr>
            
            <% 
            try {
                // Database connection parameters
                String url = "jdbc:mysql://your-database-url";
                String user = "your-username";
                String password = "your-password";

                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection connection = DriverManager.getConnection(url, user, password);

                // Query to retrieve tree quotes
                String selectQuery = "SELECT * FROM TreeRequest";
                Statement statement = connection.createStatement();
                ResultSet resultSet = statement.executeQuery(selectQuery);

                while (resultSet.next()) {
                    int quoteID = resultSet.getInt("RequestID");
                    double treeSize = resultSet.getDouble("TreeSize");
                    double treeHeight = resultSet.getDouble("TreeHeight");
                    String location = resultSet.getString("Location");
                    boolean nearHouse = resultSet.getBoolean("NearHouse");
                    String note = resultSet.getString("Note");
                    String status = resultSet.getString("Status");

                    %>
                    <tr>
                        <td><%= quoteID %></td>
                        <td><%= treeSize %></td>
                        <td><%= treeHeight %></td>
                        <td><%= location %></td>
                        <td><%= nearHouse %></td>
                        <td><%= note %></td>
                        <td><%= status %></td>
                    </tr>
                    <%
                }
                resultSet.close();
                statement.close();
                connection.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
            %>
        </table>
        <%
        %>
        
        <%-- Form to send an initial quote to a client --%>
        <form action="sendQuote.jsp" method="post">
            <h2>Send Initial Quote</h2>
            <label for="clientEmail">Client's Email:</label>
            <input type="email" name="clientEmail" required><br><br>

            <label for="quoteAmount">Quote Amount:</label>
            <input type="number" name="quoteAmount" required><br><br>

            <label for="quoteDescription">Quote Description:</label>
            <textarea name="quoteDescription" rows="4" cols="50"></textarea><br><br>

            <input type="submit" value="Send Quote">
        </form>
    </center>
</body>
</html>
