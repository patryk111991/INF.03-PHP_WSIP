<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Przykład 51.3 - Obsługa bazy danych w PHP</title>
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
			$pyt=mysqli_query($conn,'SELECT nazwisko,imie,pensja FROM pracownicy WHERE nazwisko like "A%" ORDER by nazwisko');
			echo "<ol>";
				while ($result=mysqli_fetch_array($pyt))
				{
					echo "<li>".$result['nazwisko']."	".$result['imie']."		".$result['pensja']." zł</li>";
				}
			echo "</ol>";
		}
		mysqli_close($conn);
	?>

</body>
</html>