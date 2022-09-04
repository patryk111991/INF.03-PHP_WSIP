<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Przykład 51.4 - Obsługa bazy danych w PHP</title>
	<style>
		table,td,th
		{
			border:2px solid grey;
		}
		th
		{
			background-color: #dddddd;
		}
		th, td
		{
			width: 100px;
		}
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
			$pyt=mysqli_query($conn,'SELECT imie,nazwisko,data_urodzenia FROM pracownicy WHERE zawod="informatyk" AND plec="K"');
			$il_wierszy=mysqli_num_rows($pyt);
			echo "<table><tr><th>Imię</th><th>Nazwisko</th><th>Data urodzenia</th>";
			for($i=0;$i<$il_wierszy;$i++)
			{
				$result=mysqli_fetch_array($pyt);
				echo "<tr><td>".$result['nazwisko']."</td><td>".$result['imie']."</td><td>".$result['data_urodzenia']."</td></tr>";
			}
		echo "</table>";
		}
		mysqli_close($conn);
	?>
	
</body>
</html>