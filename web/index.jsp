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
        <link rel="stylesheet" href="styles/common.css" type="text/css" />
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
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
        <object data="../img/map.svg" type="image/svg+xml">
        
    </center>
    </body>
</html>
