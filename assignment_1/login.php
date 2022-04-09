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

			//read from database
			$query = "select * from users where user_name = '$user_name' limit 1";
			$result = mysqli_query($con, $query);

			if($result)
			{
				if($result && mysqli_num_rows($result) > 0)
				{

					$user_data = mysqli_fetch_assoc($result);

					if($user_data['password'] === $password)
					{

						$_SESSION['user_id'] = $user_data['user_id'];
						header("Location: index.php");
						die;
					}
				}
			}

			echo "wrong username or password!";
		}else
		{
			echo "wrong username or password!";
		}
	}

?>


<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	<link rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet" type="text/css"  href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css">
</head>
<body>
<div class="login-box">
	<div class="row">
		<div class="col-md-6">
				<form method="post">
			<div style="font-size: 30px; color: Black;"> Login Here </div>
      <label >Username</label>
			<input id="text" type="text" style="color: Black;" name="user_name" class="form-control"  required><br><br>
			<label >Password</label>
			<input id="text" type="password" style="color: Black;" name="password" class="form-control"  required><br><br>

			<input id="button" type="submit" value="Login" class="btn btn-primary">
			<a href="signup.php" class="btn btn-primary"> Click to Signup</a><br><br>
		</form>
		</div>
	</div>
	</div>
</body>
</html>
