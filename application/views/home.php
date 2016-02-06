<!DOCTYPE html>
<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>Simple Icon Hover Effects with CSS Transitions and Animations</title>
		<meta name="description" content="Simple Icon Hover Effects with CSS Transitions and Animations" />
		<meta name="keywords" content="icons, hover, round, circular, transition, animation, css3" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico"> 
    <link href="<?php echo base_url(); ?>css/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>css/default.css" />
		<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>css/component.css" />
    <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>css/sweetalert.css" />
		<script src="<?php echo base_url(); ?>js/jquery.min.js"></script>
    <script src="<?php echo base_url(); ?>js/sweetalert-dev.js"></script>
    <script src="<?php echo base_url(); ?>js/bootstrap.min.js"></script>
    <!--<script src="<?php // echo base_url(); ?>js/modernizr.custom.js"></script>-->
	</head>
	<body>
		<div class="container">
			<?php $this->load->view('header'); ?>
        <div class="set-4 content">
				<div class="hi-icon-wrap hi-icon-effect-3 hi-icon-effect-3a">
					<div class="hi-icon"  data-toggle="modal" data-target="#local"><img src="<?php echo base_url(); ?>app-icons/train1.png"></div>
					<div class="hi-icon"  data-toggle="modal" data-target="#metro"><img src="<?php echo base_url(); ?>app-icons/metro.png"></div>
					<div class="hi-icon"  data-toggle="modal" data-target="#taxi"><img src="<?php echo base_url(); ?>app-icons/taxi.png"></div>
					<div class="hi-icon"  data-toggle="modal" data-target="#auto"><img src="<?php echo base_url(); ?>app-icons/auto.png"></div>
					<!--<div class="hi-icon"><img src="<?php echo base_url(); ?>app-icons/metro.png"></div>-->
				</div>
				<div class="hi-icon-wrap hi-icon-effect-3 hi-icon-effect-3b">
          <a href="<?php // echo site_url('travel/single_search');?>"><div class="hi-icon"><img src="<?php echo base_url(); ?>app-icons/search.png"></div></a>
          <a href="<?php // echo site_url('travel/by_place');?>"><div class="hi-icon"><img src="<?php echo base_url(); ?>app-icons/range.png"></div></a>
          <a href="<?php // echo site_url('travel/geolocation');?>"><div class="hi-icon"><img src="<?php echo base_url(); ?>app-icons/map.png"></div></a>
					<div class="hi-icon" data-toggle="modal" data-target="#about"><img src="<?php echo base_url(); ?>app-icons/about.png"></div>
					<!--<a href="#set-3" class="hi-icon hi-icon-location">Location</a>-->
				</div>
			</div>
      
      <?php
      $this->load->view('local',array('localArray' => $localArray));
      $this->load->view('metro',array('metroArray' => $metroArray));
      $this->load->view('taxi');
      $this->load->view('auto');
      $this->load->view('about');
      
      $this->load->view('footer');
      ?>
		</div><!-- /container -->
	</body>
</html>