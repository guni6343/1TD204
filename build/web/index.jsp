<%-- 
    Document   : index
    Created on : Apr 21, 2015, 7:43:37 PM
    Author     : grishasergei
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>T-bana</title>
    </head>
    <body>
    <center>
        <h1>Welcome to T-bana world!</h1>
        <form action="SearchStationServlet" method="post">
            <strong>Search for the station</strong>
            <input type="text" name="requestedStationName">
            <input type="submit" value="submit" name="submit">
        </form>
    </center>
    </body>
</html>
