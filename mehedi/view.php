<?php
ob_start();
session_start();
?>


<?php include('config.php');?>



<!doctype html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Data view</title>
	<style>
	body{background:url(background.png)}
	h1{color:#2eb6a7;font-size:50px;font-family:Arial;text-align:center;}
    h2{margin-left:50px;}
	table{width:750px;}
    table,td,th{border:2px solid #9f2eb6; margin-left:200px; border-collapse:collapse;}
    td{text-align:center;}
	a{ margin-left:50px; font-size:20px; font-family:Arial; text-decoration:none;}
	</style>
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
	<h1>View Data<h1>
	<h2></h2>
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
			<td><a href="update.php?id=<?php echo $row['id']?>" >Edit</a> &nbsp;  ! &nbsp; 
			<a onclick="return confirm_delete()" href="delete.php?id=<?php echo $row['id']?>" >Delete</a></td>
			
		</tr>
		<?php
		 }
	     ?>
		
	  </table>
	<br>
	
	<a href="index.php">Back To Previous</a>



</html>