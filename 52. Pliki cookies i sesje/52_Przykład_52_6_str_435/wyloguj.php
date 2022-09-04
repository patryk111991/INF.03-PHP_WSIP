<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Przykład 52.6 - Pliki cookies i sesje (Wyloguj)</title>
	<?php
		session_start();
		if (isset($_SESSION['zalogowany']))
		{
			echo "Jesteś zalogowany jako: ".$_SESSION['zalogowany'];
		}
		session_destroy();
	?>
</head>
<body>
	
	<a href="logowanie.php">Powrót do strony logowania</a>

</body>
</html>