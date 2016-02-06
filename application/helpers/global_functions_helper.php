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
?>