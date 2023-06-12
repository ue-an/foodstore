<?php
/*
$host = "localhost";
$username = "root";
$password = "";
$dbname = "foodstore";

$con = msqli($host,$username,$password, $dbname);

if($con->connect_error){
  die "Connection error" . $con->connect_error);
}
else{
  echo "Connected to database successfully";
}
*/

$pdo=new PDO('mysql:host=localhost;port=3306;dbname=foodstore','root', '');
?>
