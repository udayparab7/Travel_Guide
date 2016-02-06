<!-- Modal -->
<div id="google-map" class="modal fade" role="dialog">
    <div class="modal-dialog modal-lg">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Map of Mumbai</h4>
            </div>
            <div class="modal-body">
                <style>
                    #map { height: 300px; }
                </style>
                <div id="map"></div>
                <script type="text/javascript">

                  var map;
                  function initMap() {
                      map = new google.maps.Map(document.getElementById('map'), {
                          center: {lat: 19.0825223, lng: 72.741116},
                          zoom: 8
                      });
                  }

                </script>
                <script async defer
                        src="https://maps.googleapis.com/maps/api/js?callback=initMap">
                </script>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>