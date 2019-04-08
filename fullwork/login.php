<?php
include('config.php');
 if(isset($_POST['form_login'])){
   try{
    if(empty($_POST['username'])){
	 throw new Exception ('Username can not be empty');
	
	}
	if(empty($_POST['password'])){
	  throw new Exception ('Password can not be empty');
	
	}
	$password = $_POST['password'];
	$password = md5($password);
	
	$num=0; 
	//$result = mysql_query("select * from login where username='$_POST[username]' and password='$password'");
	//$num = mysql_num_rows($result);
	
	//$result = $db->prepare("select * from login where username=? and password=?");
	//$result->execute(array($_POST['username'],$password));
	
	$result = $db->prepare("select * from login where username=:username and password=:password");
	$result->bindParam(":username",$_POST['username']);
	$result->bindParam(":password",$password);
	$result->execute();
	$num = $result->rowCount();
	
	if($num>0){
	 session_start();
	 $_SESSION['name'] = "coder";
	 header('location:index.php');
	
	}
	else{
	 throw new Exception('Invalid username or password');
	
	}
   
   
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
		<title>Login page</title>
	
	
	
	</head>
    <body>
	   <h2>Login</h2>
<?php
if(isset($error_message)){echo $error_message;}
?>
<br>
<form action="" method="post">	   
	 <table>
		<tr>
			<td>Usernane:</td>
			<td> <input type="text" name="username" value=""> </td>
		</tr>
		<tr>
			<td>Password:</td>
			<td> <input type="password" name="password" value=""> </td>
		</tr>
		<tr>
			<td></td>
			<td> <input type="submit" name="form_login" value="Login"> </td>
		</tr>
	 </table>
</form>	 
	
	
	</body>



</html>