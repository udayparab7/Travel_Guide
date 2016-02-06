<script>
$(document).ready(function(){
    $("#first-page").click(function(){
        $("#page1").show();
        $("#page2").hide();
        $("#page3").hide();
    });
    $("#second-page").click(function(){
        $("#page2").show();
        $("#page1").hide();
        $("#page3").hide();
    });
    $("#third-page").click(function(){
        $("#page3").show();
        $("#page1").hide();
        $("#page2").hide();
    });
});
</script>
<!-- Modal -->
<div id="single-search" class="modal fade" role="dialog">
    <div class="modal-dialog modal-lg">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Single Search</h4>
            </div>
            <div class="modal-body">
                <div class="row" id="page1">
                    <div class="col-md-3"><img src="<?php echo base_url();?>images/single/hospital.jpg" width="200" height="200"></div>
                    <div class="col-md-3"><img src="<?php echo base_url();?>images/single/fire.png" width="200" height="200"></div>
                    <div class="col-md-3"><img src="<?php echo base_url();?>images/single/bank-icon.jpg" width="200" height="200"></div>
                    <div class="col-md-3"><img src="<?php echo base_url();?>images/single/police.png" width="200" height="200"></div>
                </div>
                <div class="row" id="page2" style="display: none;">
                    <div class="col-md-3"><img src="<?php echo base_url();?>images/single/fuel.png" width="200" height="200"></div>
                    <div class="col-md-3"><img src="<?php echo base_url();?>images/single/dinning.png" width="200" height="200"></div>
                    <div class="col-md-3"><img src="<?php echo base_url();?>images/single/entertainment.jpg" width="200" height="200"></div>
                    <div class="col-md-3"><img src="<?php echo base_url();?>images/single/college.jpg" width="200" height="200"></div>
                </div>
                <div class="row" id="page3" style="display: none;">
                    <div class="col-md-3"><img src="<?php echo base_url();?>images/single/industry.png" width="200" height="200"></div>
                    <div class="col-md-3"><img src="<?php echo base_url();?>images/single/School-Icon.png" width="200" height="200"></div>
                    <div class="col-md-3"><img src="<?php echo base_url();?>images/single/shopping_cart.png" width="200" height="200"></div>
                    <div class="col-md-3"><img src="<?php echo base_url();?>images/single/bus.png" width="200" height="200"></div>
                </div>
                <div class="text-center" style="margin-top: 20px;"><button type="button" class="btn btn-info" id="first-page">1</button><button type="button" class="btn btn-info" id="second-page">2</button><button type="button" class="btn btn-info" id="third-page">3</button></div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>