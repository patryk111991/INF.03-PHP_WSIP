<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Przykład 51.7 - Obsługa bazy danych w PHP</title>
</head>
<body>
	<?php
		$conn="mysql:host=localhost;dbname=firma";
		try
		{
			$pol=new PDO($conn,"root","");
			echo "Udało się połączyć z serwerem";
		}
		catch (PDOException $x)
		{
			echo 'Błąd połączenia '.$e->getMessage();
			exit;
		}
	?>
	
</body>
</html>