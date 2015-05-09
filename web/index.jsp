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
        <link rel="stylesheet" href="styles/index.css" type="text/css" />
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
        <title>T-bana</title>
        
        <script type="text/javascript">
            function resizeMap(){
                
                var wh = $(window).height();
                var ww = $(window).width();
                var mh = 0;
                var mw = 0;
                var map = document.getElementById("map");
                var ratio = map.offsetHeight / map.offsetWidth;
                if ((wh < ww)){
                    mw = Math.min(wh / ratio, ww);
                    map.style.width = mw + 'px';
                    mh = mw*ratio;
                    map.style.height = mh + 'px';
                    //alert(mw + '|' + mh);
                } else {
                    mh = Math.min(ww * ratio, wh);
                    map.style.height = mh + 'px';
                    map.style.width = mh / ratio + 'px';
                }
                var tmp = document.getElementById("test");
            }
            
            $(window).resize(function(){
                resizeMap();
            });

        </script>
        
    </head>
    <body onload="resizeMap()">
        <object id='map' data="map.svg" type="image/svg+xml"></object>
    </center>
    </body>
</html>
