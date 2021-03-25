<?php
$data = json_decode(file_get_contents('mock.json'), true);

$connection = mysqli_connect($host = 'localhost',  $user = 'root', $password = '',$database =   'cloth_shop_api',  $port = '3306',);