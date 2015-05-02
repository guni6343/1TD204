<%-- 
    Document   : station
    Created on : Apr 21, 2015, 8:31:54 PM
    Author     : grishasergei
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>${stationName}</title>
        <link rel="stylesheet" href="styles/common.css" type="text/css" />
        <style>
          #map-canvas {
            width: 600px;
            height: 400px;
          }
        </style>        
        <script src="https://maps.googleapis.com/maps/api/js"></script>
        <script>
          function initialize() {
            var mapCanvas = document.getElementById('map-canvas');
            var myLatlng = new google.maps.LatLng(${latitude},${longitude});
            var mapOptions = {
              center: myLatlng,
              zoom: 12,
              mapTypeId: google.maps.MapTypeId.ROADMAP
            }
            var map = new google.maps.Map(mapCanvas, mapOptions);
            
            var marker = new google.maps.Marker({
                position: myLatlng,
                map: map
            });
          }
          google.maps.event.addDomListener(window, 'load', initialize);
        </script>        
    </head>
    <body>
    <center>
        <h1>Hello <font color="${stationColor}">${stationName}</font>!</h1>
        <div id="map-canvas"></div>

    </center>
    </body>
</html>
