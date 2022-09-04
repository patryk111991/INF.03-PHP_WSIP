<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Zadanie 1 strona 388 - Instrukcje sterujące</title>
	</head>

	<body>
		<?php
			$liczba = 18;
			if ($liczba % 9 == 0) {
			echo "Liczba ". $liczba . " jest podzielna przez 9";
			return;
			}
			echo "Liczba " . $liczba . " nie jest podzielna przez 9";
		?>
	</body>

</html>