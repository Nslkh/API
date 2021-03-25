<?php
$config = require 'config.php';

$db_config = $config['mysql'];

$categories = json_decode(file_get_contents('mock.json'), true);

$connection = mysqli_connect($db_config['host'],$db_config['user'],$db_config['password'], $db_config['database'],$db_config['port']);

foreach($categories as $category){
  $query = "INSERT INTO categories(title, image) VALUES ('{$category['title']}','{$category['image']}')";
  $result = mysqli_query($connection,$query);
  if($result){
    echo $category['title'] . " added successfully<br>";
  }
}
