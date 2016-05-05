<script>
  $(document).ready(function() {
    $('#localForm').submit(function(event) { //Trigger on form submit

        $.ajax({                
            type: "POST",
            url: "<?php echo site_url('travel/train_fare'); ?>",
            data: $('#localForm').serialize(),
            success: function (message)
            {
              if(message == 'Please select source and destination')
              {
                swal({   title: message,   imageUrl: "app-icons/about.png" });
              }
              else if(message == 'Please select different source and destination')
              {
                swal({   title: message,   imageUrl: "app-icons/about.png" });
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
<div id="local" class="modal fade" role="dialog">
    <div class="modal-dialog modal-md">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Local Fares</h4>
            </div>
            <div class="modal-body">
                <form method="post" action="" id="localForm" name="localForm">
                    <div class="form-group">
                        <select class="form-control" name="source">
                            <option value="">Select Source</option>
                            <?php foreach($localArray as $source_key => $source_val){ 
                                  echo '<option value="'.$source_key.'">'.$source_val.'</option>';
                             } ?>
                        </select>
                        <select class="form-control" name="destination">
                            <option value="">Select Destination</option>
                            <?php foreach($localArray as $source_key => $source_val){ 
                                  echo '<option value="'.$source_key.'">'.$source_val.'</option>';
                             } ?>
                        </select>
                        <button type="submit" class="btn btn-default">Search</button>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>