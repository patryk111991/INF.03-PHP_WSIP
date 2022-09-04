<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Przykład 51.2 - Obsługa bazy danych w PHP</title>
</head>
<body>
	
	<?php
		$conn=@mysqli_connect('localhost','root','','firma');
		if (!$conn)
		{
			exit("Błąd połaczenia z serwerem");
		}
		else
		{
			echo "Połączyłeś się z bazą FIRMA";
		}
		mysqli_close($conn);
	?>

</body>
</html>