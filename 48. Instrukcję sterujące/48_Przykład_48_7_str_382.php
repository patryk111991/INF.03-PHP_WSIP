<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Przykład 48.7 - Instrukcje sterujące</title>
	</head>

	<body>
		<?php
			$liczba1=56;
			$warunek=($liczba1>=10 && $liczba1<=99)? "Liczba $liczba1 jest liczbą dwucyfrową" : "Liczba $liczba1 nie jest liczbą dwucyfrową";
			echo $warunek;
		?>
	</body>

</html>