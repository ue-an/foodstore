<?php
/*
$host = "localhost";
$username = "root";
$password = "";
$dbname = "foodstore";

//this is a procedural
//create connection
$con = mysqli_connect($host,$username,$password, $dbname);

//check connection
if(!$con){
  die "Connection error" . mysqli_connect_error());
}
else{
  echo "Connected to database successfully";
}
*/

$pdo=new PDO('mysql:host=localhost;port=3306;dbname=foodstore','root', '');
?>
