<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Przykład 51.5 - Obsługa bazy danych w PHP</title>
	<style>
		
	</style>
</head>
<body>
	<?php
		$conn=mysqli_connect('localhost','root','','firma');
		if (!$conn)
		{
			exit("Błąd połączenia z serwerem");
		}
		else
		{
			mysqli_query($conn,"INSERT INTO placowki (id_placowki,nazwa,miasto,adres) VALUES ('7','Iks','Warszawa','Tuwima 7'), ('8','DamaX','Kielce','Mickiewicza 8')");
			$ile_dodano=mysqli_affected_rows($conn);
			echo "Liczba dodanych rekordów: ".$ile_dodano;
		}
		mysqli_close($conn);
	?>
	
</body>
</html>