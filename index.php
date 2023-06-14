<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf8"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="style.css">
<body>
	<?php
	session_start();
		$servername = "localhost";
		$username = "root";
		$password = "";

		$conn = new mysqli($servername, $username, $password);

		if ($conn->connect_error) {
			die("Connection failed: " . $conn->connect_error);
		}

		$sql = "USE foodstore";
		$conn->query($sql);

		$sql = "SELECT * FROM food";
		$result = $conn->query($sql);

		if(isset($_SESSION['id'])){
			echo '<header>';
			echo '<blockquote>';
			echo '<a href="index.php"><img width="90" src="image/logo.png"></a>';
			echo '<form class="hf" action="logout.php"><input class="hi" type="submit" name="submitButton" value="Logout"></form>';
			echo '<form class="hf" action="edituser.php"><input class="hi" type="submit" name="submitButton" value="Edit Profile"></form>';
			echo '</blockquote>';
			echo '</header>';
		}
		
		if(!isset($_SESSION['id'])){
			echo '<header>';
			echo '<blockquote>';
			echo '<a href="index.php"><img width="90" src="image/logo.png"></a>';
			echo '<form class="hf" action="Register.php"><input class="hi" type="submit" name="submitButton" value="Register"></form>';
			echo '<form class="hf" action="login.php"><input class="hi" type="submit" name="submitButton" value="Login"></form>';
			echo '</blockquote>';
			echo '</header>';
		}
	?>
</body>
</html>