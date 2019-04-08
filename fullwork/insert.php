<?php
ob_start();
session_start();
if($_SESSION['name']!="coder"){

header('location:login.php');
}
?>

<?php
include('config.php');
if(isset($_POST['form1'])){
 
 try{ 
  if(empty($_POST['st_name'])){
   throw new Exception('Name can not be empty');
  }
  if(empty($_POST['st_roll'])){
   throw new Exception('Roll can not be empty');
  }
  if(empty($_POST['st_age'])){
   throw new Exception('Age can not be empty');
  }
  if(empty($_POST['st_email'])){
   throw new Exception('Email can not be empty');
  }
  
  //$result = mysql_query("insert into student (st_name,st_roll,st_age,st_email) values ('$_POST[st_name]',
  //'$_POST[st_roll]','$_POST[st_age]','$_POST[st_email]')");
  
  $result = $db->prepare("insert into student (st_name,st_roll,st_age,st_email) values (?,?,?,?)");
  $result->execute(array($_POST['st_name'],$_POST['st_roll'],$_POST['st_age'],$_POST['st_email']));
  
  $success_message = 'Data has been uploaded successfully';
 
 
 }
  catch(Exception $e){
   $error_message = $e->getmessage();
  
  }
}
?>



<!doctype html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Data insert</title>
	
	
	
	</head>
    <body>
	<?php
	if(isset($error_message)){echo $error_message;}
	if(isset($success_message)){echo $success_message;}
	
	?>
	<h2>Upload your data</h2>
	   <form action="" method="post">
		<table>
			<tr>
				<td>Name</td>
				<td><input type="text" name="st_name" value=""></td>
			</tr>
			<tr>
				<td>Roll</td>
				<td><input type="text" name="st_roll" value=""></td>
			</tr>
			<tr>
				<td>Age</td>
				<td><input type="text" name="st_age" value=""></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="text" name="st_email" value=""></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" name="form1" value="Upload"></td>
			</tr>
	   
	    </table>
	   </form>
	   
	
	
	</body>
	<br>
	
	<a href="index.php">Back To Previous</a>



</html>