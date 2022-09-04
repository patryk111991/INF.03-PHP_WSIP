<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Przykład 48.12 - Instrukcje sterujące</title>
	</head>

	<body>
		<?php
			$liczba=132;
			echo "Liczba $liczba napisana w odwrotnej kolejności to: ";
			while ($liczba>0)
			{
				//reszta z dzielenia przez 10 wyświetli ostatnią cyfrę
				echo $liczba%10;
				//dzielimy liczbę przez 10 i zaokrąglamy ją do liczby całkowitej
				$liczba=floor($liczba/10);
			}
		?>
	</body>

</html>