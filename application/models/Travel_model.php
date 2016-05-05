<?php

class Travel_model extends CI_Model {
  
  public function __construct() {
    parent::__construct();
    $this->load->database();
  }

  public function find_train_fare($source,$destination)
  {
    return $query = $this->db->query("select * from train_fare where source like '%$source%' and destination like '%$destination%'")
                    ->row_array();
  }
  
  public function find_metro_fare($source,$destination)
  {
    return $query = $this->db->query("select * from metro_fare where source like '%$source%' and destination like '%$destination%'")
                    ->row_array();
  }
  
  public function find_taxi_fare($filter,$reading)
  {
    return $query = $this->db->query("select $filter from taxi_fare where km = $reading")
                    ->row_array();
  }
  
  public function find_auto_fare($filter,$reading)
  {
    return $query = $this->db->query("select $filter from auto_fare where km = $reading")
                    ->row_array();
  }
  
  public function find_fares($src,$dest,$class)
  {
    $sql_fares = 'SELECT '.$src.' FROM '.$class.' WHERE Station = "'.$dest.'"';
    return $this->db->query($sql_fares)->row_array();
  }
}
?>