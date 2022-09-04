<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Przykład 51.8 - Obsługa bazy danych w PHP</title>
</head>
<body>
	<?php
		$conn="mysql:host=localhost;dbname=firma";
		try
		{
			$pol=new PDO($conn,"root","");
			$query=$pol->query('SELECT imie,nazwisko,pensja FROM pracownicy WHERE zawod="grafik" ORDER BY pensja DESC');
			foreach ($query as $wiersz)
			{
				echo $wiersz['imie']." ".$wiersz['nazwisko']." ".$wiersz['pensja']."<br>";
			}
		}
		catch (PDOException $x)
		{
			echo 'Błąd połączenia '.$e->getMessage();
			exit;
		}
	?>
	
</body>
</html>