<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Przykład 48.3 - Instrukcje sterujące</title>
	</head>

	<body>
		<?php
			$x=21;
			//sprawdzenie, czy x jest podzielne przez 35
			if ($x%35==0)
			{
				echo "Liczba jest podzielna przez 35";
			}
			//sprawdzanie, czy x jest podzielne przez 5
			elseif ($x%5==0)
			{
				echo "Liczba $x jest podzielna przez 5, ale nie jest podzielna przez 7";
			}
			//sprawdzanie, czy jest podzielna przez 7
			elseif ($x%7==0)
			{
				echo "Liczba $x jest podzizelna przez 7, ale nie jest podzielna przez 5";
			}
			else
			{
				echo "Liczba $x nie jest podzielna przez 5 i nie jest podzielna przez 7";
			}
		?>
	</body>

</html>