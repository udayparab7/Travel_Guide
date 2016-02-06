<!DOCTYPE html>
<html>
  <head>
    <style type="text/css">
      html, body { height: 100%; margin: 0; padding: 0; }
      #map { height: 100%; }
    </style>
  </head>
  <body>
    <div id="map"></div>
    <script type="text/javascript">

var map;
function initMap() {
  map = new google.maps.Map(document.getElementById('map'), {
    center: {lat: 19.0825223, lng: 72.741116},
    zoom: 11
  });
}

    </script>
    <script async defer
      src="https://maps.googleapis.com/maps/api/js?callback=initMap">
    </script>
  </body>
</html>