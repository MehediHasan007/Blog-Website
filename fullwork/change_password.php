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
  
  if(empty($_POST['old_password'])){
   throw new Exception('Old_password can not be empty');
  }
  if(empty($_POST['new_password'])){
   throw new Exception('New_password can not be empty');
  }
  if(empty($_POST['confirm_password'])){
   throw new Exception('Confirm_New_password can not be empty');
  }
  //Checking old password
  
  $password = $_POST['old_password'];
	$password = md5($password);
	
	$num=0; 
	//$result = mysql_query("select * from login where  password='$password' ");
	//$num = mysql_num_rows($result);
	
	$result = $db->prepare("select * from login where  password=?");
	$result->execute(array($password));
	$num = $result->rowCount();
	
	
	
	if($num == 0){
	  throw new Exception('Old password is wrong!');
	}
	if($_POST['new_password'] != $_POST['confirm_password']){
	
	  throw new Exception('New password does not match.');
	}
	
	$newpassword = $_POST['new_password'];
	$newpassword = md5($newpassword);
	
	
	//$result = mysql_query("update login set password='$newpassword' where id=1  ");
	
	$result = $db->prepare("update login set password='$newpassword' where id=1 ");
    $result->execute(array($newpassword));
	
	 $success_message = 'Password has been uploaded successfully';
  
  
  
  
 
 
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
		<title>Change Password page</title>
	
	
	
	</head>
    <body>
	<?php
	if(isset($error_message)){echo $error_message;}
	if(isset($success_message)){echo $success_message;}
	
	?>
	<h2>Change Password </h2>
	   <form action="" method="post">
		<table>
			<tr>
				<td>Old Password</td>
				<td><input type="password" name="old_password" value=""></td>
			</tr>
			<tr>
				<td>New Password</td>
				<td><input type="password" name="new_password" value=""></td>
			</tr>
			<tr>
				<td>Confirm New Password</td>
				<td><input type="password" name="confirm_password" value=""></td>
			</tr>
			
			<tr>
				<td></td>
				<td><input type="submit" name="form1" value="Update"></td>
			</tr>
	   
	    </table>
	   </form>
	   
	
	
	</body>
	<br>
	
	<a href="index.php">Back To Previous</a>



</html>