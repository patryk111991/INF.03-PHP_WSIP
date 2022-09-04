<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Przykład 50.4 - Obsługa formularzy</title>
</head>
<body>
	<?php
		if (!empty($_POST['imie']) && !empty($_POST['nazwisko']) && !empty($_POST['mail']) )
		{
			echo "Wpisałeś wszystkie dane";
		}
		else
		{
			echo "Nie wprowadzono wszystkich danych";
		}
	?>
	
</body>
</html>