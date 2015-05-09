<%-- 
    Document   : station
    Created on : Apr 21, 2015, 8:31:54 PM
    Author     : grishasergei
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>${stationName}</title>
        <link rel="stylesheet" href="styles/common.css" type="text/css" />
        <link rel="stylesheet" href="styles/station.css" type="text/css" />
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
        <div class='line_box' style='background-color: ${stationColor};'></div>
    <div class='station_content'>
        
        <h1>${stationName}</h1>
        <div id="map-canvas"></div>
    </div>

    </body>
</html>
