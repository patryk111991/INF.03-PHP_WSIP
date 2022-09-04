<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Przykład 52.6 - Pliki cookies i sesje (Nowy)</title>
</head>
<body>
	
	<b>ZAREJESTRUJ SIĘ NA STRONIE</b>
	<form action="" method="POST">
		<br>Login: <input type="text" name="login">
		<br>Hasło: <input type="password" name="haslo">
		<br><input type="submit" value="ZAREJESTRUJ SIĘ">
	</form>
	<?php
		if (isset($_POST['login']) && isset($_POST['haslo']))
		{
			$login=$_POST['login'];
			$haslo=$_POST['haslo'];
			$_SESSION['rejestracja']=2;
			$conn=mysqli_connect('localhost','root','','baza1');
			$z1=mysqli_query($conn,"INSERT INTO uzytkownik VALUES(NULL,'$login','$haslo')");
			header('location: logowanie.php');
			exit();
		}
	?>

</body>
</html>