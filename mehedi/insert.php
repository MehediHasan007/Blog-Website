<?php
ob_start();
session_start();
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
	<style>
	body{background:url(background.png)}
	h1{color:#2eb6a7;font-size:50px;font-family:Arial;text-align:center;}
	table{width:200px;height:150px}
    table,td,th{ margin-left:50px; }
    td{text-align:center;}
	a{ margin-left:50px; font-size:20px; font-family:Arial; text-decoration:none;}
	
	</style>
	
	
	
	</head>
    <body>
	<?php
	if(isset($error_message)){echo $error_message;}
	if(isset($success_message)){echo $success_message;}
	
	?>
	<h1>Upload your data</h1>
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