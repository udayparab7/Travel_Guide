<?php

function printArray($array)
{
  echo '<pre>';
  print_r($array);
}

function insert_train_fare()
{
  $CI = get_instance();
  $source = array("Borivali","Kandivali","Malad","Goregaon","Jogeshwari","Andheri","Vile Parle","Santacruz","Khar Road","Bandra","Mahim","Matunga","Dadar","Elphistone Road","Lower Parel","Mahalaxmi","Mumbai Central","Grant Road","Charni Road","Marine Lines","Churchgate");
  $CI->db->insert('train_fare',$source);
}

function select_fares($src,$dest)
{
  $CI = get_instance();
  $result = array();
  $first_result = $CI->travel_model->find_fares($src,$dest,'local_first');
  $sec_result = $CI->travel_model->find_fares($src,$dest,'local_second');
  $result = array('first' => $first_result['BVI'],'second' => $sec_result['BVI']);
  return $result;
}
?>