<script>
  $(document).ready(function() {
    $('#taxiForm').submit(function(event) { //Trigger on form submit
        $.ajax({                
            type: "POST",
            url: "<?php echo site_url('travel/taxi_fare'); ?>",
            data: $('#taxiForm').serialize(),
            success: function (message)
            {
              if(message == 'Please select source and destination')
              {
                swal({   title: message,   imageUrl: "images/thumbs-up.jpg" });
              }
              else 
              {
                swal({   title: "Your Fare",   text: message,   imageUrl: "<?php echo base_url();?>images/Tickets-icon.png" });
              }
            }
        });
        event.preventDefault(); //Prevent the default submit
    });
});
</script>
<!-- Modal -->
<div id="taxi" class="modal fade" role="dialog">
    <div class="modal-dialog modal-md">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Taxi Fares</h4>
            </div>
            <div class="modal-body">
                <div>
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active"><a href="#t-day" aria-controls="home" role="tab" data-toggle="tab" onclick="document.getElementById('taxi-filter').value='day';">Day</a></li>
                        <li role="presentation"><a href="#t-night" aria-controls="profile" role="tab" data-toggle="tab" onclick="document.getElementById('taxi-filter').value='night';">Night</a></li>
                    </ul>

                    <!-- Tab panes -->
                    <div class="tab-content tabpanel">
                        <div role="tabpanel" class="tab-pane active" id="t-day">
                            <form method="post" action="" id="taxiForm" name="taxiForm">
                                <div class="form-group">
                                    <input type="hidden" name="filter" id="taxi-filter" value="day">
                                    <input type="text" class="form-control" placeholder="Enter Distance in (Km)" name="reading">
                                    <button type="submit" class="btn btn-default">Search</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>