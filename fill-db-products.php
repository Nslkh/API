<?php
$config = require 'config.php';

$db_config = $config['mysql'];

$categories = json_decode(file_get_contents('mock.json'), true);

$connection = mysqli_connect($db_config['host'],$db_config['user'],$db_config['password'], $db_config['database'],$db_config['port']);

foreach ($categories as $category_id => $category){

  foreach ($category['items'] as $product){
      $query = "INSERT INTO products(name, img, price, category_id) VALUES ('{$product['name']}', '{$product['img']}', '{$product['price']}', '{$category_id}')";
      $result = mysqli_query($connection, $query);

      if ($result) {
          echo $product['name'] . " was added successfully to " . $category['title'] . "<br>";
      }
  }

}