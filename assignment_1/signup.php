<?php
session_start();

	include("connection.php");
	include("functions.php");


	if($_SERVER['REQUEST_METHOD'] == "POST")
	{
		//something was posted
		$user_name = $_POST['user_name'];
		$password = $_POST['password'];

		if(!empty($user_name) && !empty($password) && !is_numeric($user_name))
		{

			//save to database
			$user_id = random_num(20);
			$query = "insert into users (user_id,user_name,password) values ('$user_id','$user_name','$password')";

			mysqli_query($con, $query);

			header("Location: login.php");
			die;
		}else
		{
			echo "Please enter some valid information!";
		}
	}
?>


<!DOCTYPE html>
<html>
<head>
	<title>Signup</title>
	<link rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet" type="text/css"  href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css">
</head>
<body>
	<div class="login-box">
		<div class="row">
 		<div class="col-md-6">
		<form method="post">
			<div style="font-size: 30px;color: black;">Signup</div>
       <label >Username</label>
			<input id="text" type="text" style="color: black;" name="user_name"class="form-control" required ><br><br>
       <label >Password</label>
			<input id="text" type="password" style="color: black;" name="password"class="form-control" required><br><br>

			<input id="button" type="submit" value="Signup" class="btn btn-primary">
			<a href="login.php" class="btn btn-primary">Click to Login</a><br><br>
		</form>
		</div>
		</div>
	</div>
</body>
</html>
