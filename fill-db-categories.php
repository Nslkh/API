<?php
$categories = json_decode(file_get_contents('mock.json'), true);

$connection = mysqli_connect($host = 'localhost',  $user = 'root', $password = '',$database =   'cloth_shop_api',  $port = '3306',);

foreach($categories as $category){
  $query = "INSERT INTO categories(title, image) VALUES ('{$category['title']}','{$category['image']}')";
  $result = mysqli_query($connection,$query);
  if($result){
    echo $category['title'] . " added successfully<br>";
  }
}
