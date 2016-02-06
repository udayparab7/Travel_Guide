<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Search Near by location</title>
        <link href="<?php echo base_url(); ?>css/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="<?php echo base_url(); ?>css/flat-ui.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>css/default.css" />
        <script src="<?php echo base_url(); ?>js/jquery.js"></script>
        <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=true&libraries=places"></script>
        <style type="text/css">
            #map {
                height: 420px;
                width: 60%;
                /*border: 1px solid #333;*/
                /*margin-top: 0.6em;*/
            }
            .form-group {
                margin: 10px 10px;
            }
        </style>

        <script type="text/javascript">
          $(function () {
              $('.chkbox').click(function () {
                  $(':checkbox').attr('checked', false);
                  $('#' + $(this).attr('id')).attr('checked', true);
                  search_types(map.getCenter());
              });

          });


          if (navigator.geolocation) {
              navigator.geolocation.watchPosition(showPosition);
          } else {
              x.innerHTML = "Geolocation is not supported by this browser.";
          }


          var mylat;
          var mylng;
          var pyrmont;
          var myacc;
          function showPosition(position) {
              mylat = position.coords.latitude;
              mylng = position.coords.longitude;
              myacc = position.coords.accuracy;
              pyrmont = new google.maps.LatLng(mylat, mylng, myacc);
          }
          var map;
          var infowindow;
          var markersArray = [];

          var marker;
          var geocoder = new google.maps.Geocoder();
          var infowindow = new google.maps.InfoWindow();
          // var waypoints = [];                  
          function initialize() {
              map = new google.maps.Map(document.getElementById('map'), {
                  mapTypeId: google.maps.MapTypeId.ROADMAP,
                  center: pyrmont,
                  zoom: 14
              });
              infowindow = new google.maps.InfoWindow();
              //document.getElementById('directionsPanel').innerHTML='';
              search_types();
          }

          function createMarker(place, icon) {
              var placeLoc = place.geometry.location;
              var marker = new google.maps.Marker({
                  map: map,
                  position: place.geometry.location,
                  icon: icon,
                  visible: true

              });

              markersArray.push(marker);
              google.maps.event.addListener(marker, 'click', function () {
                  infowindow.setContent("<b>Name:</b>" + place.name + "<br><b>Address:</b>" + place.vicinity + "<br><b>Reference:</b>" + place.reference + "<br><b>Rating:</b>" + place.rating + "<br><b>Id:</b>" + place.id);
                  infowindow.open(map, this);
              });

          }
          var source = "";
          var dest = '';

          function search_types(latLng) {
              clearOverlays();

              if (!latLng) {
                  var latLng = pyrmont;
              }
              var type = $('.chkbox:checked').val();
              var icon = "<?php echo base_url(); ?>images/geo/" + type + ".png";


              var request = {
                  location: latLng,
                  radius: 2000,
                  types: [type] //e.g. school, restaurant,bank,bar,city_hall,gym,night_club,park,zoo
              };

              var service = new google.maps.places.PlacesService(map);
              service.search(request, function (results, status) {
                  map.setZoom(14);
                  if (status == google.maps.places.PlacesServiceStatus.OK) {
                      for (var i = 0; i < results.length; i++) {
                          results[i].html_attributions = '';
                          createMarker(results[i], icon);
                      }
                  }
              });

          }


          // Deletes all markers in the array by removing references to them
          function clearOverlays() {
              if (markersArray) {
                  for (i in markersArray) {
                      markersArray[i].setVisible(false)
                  }
                  //markersArray.length = 0;
              }
          }
          google.maps.event.addDomListener(window, 'load', initialize);

          function clearMarkers() {
              $('#show_btn').show();
              $('#hide_btn').hide();
              clearOverlays()
          }
          function showMarkers() {
              $('#show_btn').hide();
              $('#hide_btn').show();
              if (markersArray) {
                  for (i in markersArray) {
                      markersArray[i].setVisible(true)
                  }

              }
          }

          function showMap() {

              var imageUrl = 'http://chart.apis.google.com/chart?cht=mm&chs=24x32&chco=FFFFFF,008CFF,000000&ext=.png';
              var markerImage = new google.maps.MarkerImage(imageUrl, new google.maps.Size(24, 32));
              var input_addr = $('#address').val();
              geocoder.geocode({address: input_addr}, function (results, status) {
                  if (status == google.maps.GeocoderStatus.OK) {
                      var latitude = results[0].geometry.location.lat();
                      var longitude = results[0].geometry.location.lng();
                      var latlng = new google.maps.LatLng(latitude, longitude);
                      if (results[0]) {
                          map.setZoom(14);
                          map.setCenter(latlng);
                          marker = new google.maps.Marker({
                              position: latlng,
                              map: map,
                              icon: markerImage,
                              draggable: true

                          });
                          $('#btn').hide();
                          $('#latitude,#longitude').show();
                          $('#address').val(results[0].formatted_address);
                          $('#latitude').val(marker.getPosition().lat());
                          $('#longitude').val(marker.getPosition().lng());
                          infowindow.setContent(results[0].formatted_address);
                          infowindow.open(map, marker);
                          search_types(marker.getPosition());
                          google.maps.event.addListener(marker, 'click', function () {
                              infowindow.open(map, marker);

                          });


                          google.maps.event.addListener(marker, 'dragend', function () {

                              geocoder.geocode({'latLng': marker.getPosition()}, function (results, status) {
                                  if (status == google.maps.GeocoderStatus.OK) {
                                      if (results[0]) {
                                          $('#btn').hide();
                                          $('#latitude,#longitude').show();
                                          $('#address').val(results[0].formatted_address);
                                          $('#latitude').val(marker.getPosition().lat());
                                          $('#longitude').val(marker.getPosition().lng());
                                      }

                                      infowindow.setContent(results[0].formatted_address);
                                      var centralLatLng = marker.getPosition();
                                      search_types(centralLatLng);
                                      infowindow.open(map, marker);
                                  }
                              });
                          });


                      } else {
                          alert("No results found");
                      }
                  } else {
                      alert("Geocoder failed due to: " + status);
                  }
              });

          }

        </script>
    </head>
    <body>
        <div class="container">
            <?php $this->load->view('header'); ?>
            <div class="row content set-4">
                <div class="col-md-4">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <div class="input-group">
                                    <input class="form-control" id="address" type="search" placeholder="Address">
                                    <span class="input-group-btn">
                                        <button type="button" class="btn" id="btn" onClick="showMap();"><span class="fui-search"></span></button>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <input type="checkbox" name="mytype" class="chkbox" id="school"  value="school" /><label for="school">School</label>
                        </div>
                        <div class="col-md-6">
                            <input type="checkbox" name="mytype" class="chkbox" id="restaurant"  value="restaurant"/><label for="restaurant" >Restaurant</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <input type="checkbox" name="mytype" class="chkbox"  id="hospital"  value="hospital"/><label for="hospital" >Hospital</label>
                        </div>
                        <div class="col-md-6">
                            <input type="checkbox" name="mytype"  class="chkbox" id="bus_station"  value="bus_station"/><label for="bus_station" >Bus Stopedge</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <input type="checkbox" name="mytype"  class="chkbox" id="park"  value="park"/><label for="park" >Park</label>
                        </div>
                        <div class="col-md-6">
                            <input type="checkbox" name="mytype"  class="chkbox" id="bank"  value="bank"/><label for="bank" >Bank</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <input type="checkbox" name="mytype"  class="chkbox" id="movie_theater"  value="movie_theater"/><label for="movie_theater" >Movie Theater</label>
                        </div>
                        <div class="col-md-6">
                            <input type="checkbox" name="mytype"  class="chkbox" id="night_club"  value="night_club"/><label for="night_club" >Night Club</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <input type="checkbox" name="mytype"  class="chkbox" id="zoo"  value="zoo"/><label for="zoo" >Zoo</label>
                        </div>
                        <div class="col-md-6">
                            <input type="checkbox" name="mytype"  class="chkbox" id="gym"  value="gym"/><label for="gym" >Gym</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <input type="checkbox" name="mytype"  class="chkbox" id="atm"  value="atm"/><label for="atm" >ATM</label>
                        </div>
                        <div class="col-md-6">
                            <input type="checkbox" name="mytype"  class="chkbox" id="spa"  value="spa"/><label for="spa" >Spa</label>
                        </div>
                    </div>
                </div>

                <div id="map" class="col-md-7"></div>
            </div>
            <?php $this->load->view('footer'); ?>
        </div>
    </body>

</html>