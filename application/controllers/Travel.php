<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Travel extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see http://codeigniter.com/user_guide/general/urls.html
	 */
  
  public function __construct() {
    parent::__construct();
    $this->load->helper('url_helper');
    $this->load->helper('global_functions_helper');
    $this->load->model('travel_model');
  }
  public function index()
	{
    $data['localArray'] = array(
      'BVI'  => 'Borivali',
      'KILE' => 'Kandivali',
      'MDD'  => 'Malad',
      'GM'   => 'Goregaon',
      'JOS'  => 'Jogeshwari',
      'ADH'  => 'Andheri',
      'VPL'  => 'Vile Parle',
      'STC'  => 'Santacruz',
      'KHR'  => 'Khar Road',
      'BA'   => 'Bandra',
      'MM'   => 'Mahim',
      'MRU'  => 'Matunga',
      'DDR'  => 'Dadar',
      'EPR'  => 'Elphistone Road',
      'PL'   => 'Lower Parel',
      'MX'   => 'Mahalaxmi',
      'MCT'  => 'Mumbai Central',
      'GTR'  => 'Grant Road',
      'CYR'  => 'Charni Road',
      'MEL'  => 'Marine Lines',
      'CCG'  => 'Churchgate');
    
    $data['metroArray'] = array("Versova","D N Nagar","Azad Nagar","Andheri","Western Express Highway","Chakala","Airport Road","Marol Naka","Saki Naka","Asalpha","Jagruti Nagar","Ghatkopar");
		$this->load->view('home',$data);
	}
  
  public function mobond()
  {
    $this->load->view('mobond');
  }
  
  public function hover()
  {
    $this->load->view('hover');
  }
  
  public function flatui()
  {
    $this->load->view('flatui');
  }
  
  public function geolocation()
  {
    $this->load->view('maps');
  }
  
  public function train_fare()
  {
    $source = $this->input->post('source');
    $destination = $this->input->post('destination');
    if($source != '' && $destination != '')
    {
      if($source != $destination)
      {
        $first_result = $this->travel_model->find_fares($source,$destination,'local_first');
        $sec_result = $this->travel_model->find_fares($source,$destination,'local_second');
        echo 'Second class : '.$sec_result[$source];
        echo ' First class : '.$first_result[$source];
      }
      else 
      {
        echo 'Please select different source and destination';
      }
    }
    else 
    {
      echo 'Please select source and destination';
    }
  }
  
  public function metro_fare()
  {
    $source = $this->input->post('source');
    $destination = $this->input->post('destination');
    if($source != '' && $destination != '')
    {
      if($source != $destination)
      {
        $result = $this->travel_model->find_metro_fare($source,$destination);
        echo 'Rs. '.$result['fare'];
      }
      else 
      {
        echo 'Please select different source and destination';
      }
    }
    else 
    {
      echo 'Please select source and destination';
    }
  }
  
  public function single_search()
  {
    $this->load->view('single_search');
  }
  
  public function by_place()
  {
    $this->load->view('by_place');
  }
  
  public function taxi_fare()
  {
    $filter = $this->input->post('filter');
    $reading = $this->input->post('reading');
    if($filter != '' && $reading != '')
    {
      $result = $this->travel_model->find_taxi_fare($filter,$reading);
      echo 'Rs. '.$result[$filter];
    }
    else 
    {
      echo 'Please enter reading';
    }
  }
  
  public function auto_fare()
  {
    $filter = $this->input->post('filter');
    $reading = $this->input->post('reading');
    if($filter != '' && $reading != '')
    {
      $result = $this->travel_model->find_auto_fare($filter,$reading);
      echo 'Rs. '.$result[$filter];
    }
    else 
    {
      echo 'Please enter reading';
    }
  }
}
