<?php
ob_start();
session_start();
if($_SESSION['name']!="coder"){

header('location:login.php');
}
?>


<?php include('config.php');?>



<!doctype html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Data view</title>
	
	<script>
		function confirm_delete(){
		
		  return confirm('Do you want to delete data?');
		
		}
		
	
	</script>
	
	</head>
    <body>
	<?php
	//if(isset($error_message)){echo $error_message;}
	//if(isset($success_message)){echo $success_message;}
	
	?>
	<h2>View your data</h2>
	  <table border="1" cellspacing="0" cellpadding="5">
		<tr>
			<th>Serial No</th>
			<th>Name</th>
			<th>Roll</th>
			<th>Age</th>
			<th>Email</th>
			<th>Update</th>
		</tr>
		<?php
		$s=0;
		 //$result = mysql_query('select * from student ');
		 
		 $result = $db->prepare("select * from student");
         $result->execute();
		 $varname = $result->fetchAll(PDO::FETCH_ASSOC);
		 foreach( $varname as $row)
		 
		 //while($row = mysql_fetch_array($result))
		 {
		 $s++;
		 	?>
		 <tr>
			<td><?php echo $s ?></td>
			<td><?php echo $row['st_name']?></td>
			<td><?php echo $row['st_roll']?></td>
			<td><?php echo $row['st_age']?></td>
			<td><?php echo $row['st_email']?></td>
			<td><a href="update.php?id=<?php echo $row['id']?>" >Edit</a> &nbsp; / &nbsp; 
			<a onclick="return confirm_delete()" href="delete.php?id=<?php echo $row['id']?>" >Delete</a></td>
			
		</tr>
		<?php
		 }
	     ?>
		
	  </table>
	<br>
	
	<a href="index.php">Back To Previous</a>



</html>