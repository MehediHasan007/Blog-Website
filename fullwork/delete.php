<?php
ob_start();
session_start();
if($_SESSION['name']!="coder"){

header('location:login.php');
}
?>

<?php
include('config.php');

if(isset($_REQUEST['id'])){
 $id = $_REQUEST['id'];
 // $result = mysql_query("delete from student where id='$id'");
$result = $db->prepare("delete from student where id=?");
$result->execute(array($id));
	
 
  header('location:view.php');
 
}
else{
 header('location:view.php');
}

?>