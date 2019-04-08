<?php

$dbhost = 'localhost';
$dbname = 'college';
$dbuser = 'root';
$dbpass = '';

try{
  $db = new PDO("mysql:host={$dbhost};dbname={$dbname}",$dbuser,$dbpass);
  $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

}
catch(PDOException $e){
echo "connection error".$e->getmessage();

} 






//mysql_connect('localhost','root','') or die ('can not connect to the server');
//mysql_select_db('college') or die ('con not select database');

?>