<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Przykład 52.6 - Pliki cookies i sesje (Logowanie)</title>
	<?php
		session_start();
		if (isset($_POST['login']) && isset($_POST['haslo']))
		{
			$login=$_POST['login'];
			$haslo=$_POST['haslo'];
			$conn=mysqli_connect('localhost','root','','baza1');
			$z1=mysqli_query($conn,'SELECT login,haslo FROM uzytkownik');
			while($z2=mysqli_fetch_array($z1))
			{
				if ($login==$z2['login'] && $haslo==$z2['haslo'])
				{
					$_SESSION['zalogowany']=$z2['login'];
					header('location: wyloguj.php');
					exit();
				}
				else
				{
					$_SESSION['zalogowany']=0;
					header('location:nowy.php');
				}
			}
		}
	?>
</head>
<body>
	
	<b>Zaloguj się na stronę</b>
	<form action="" method="POST">
		<br>Login: <input type="text" name="login">
		<br>Hasło: <input type="password" name="haslo">
		<br><input type="submit" value="Zaloguj">
		<br>Stwórz własny login i hasło: <a href="nowy.php">Formularz</a>
	</form>

</body>
</html>