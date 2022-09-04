<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Przykład 48.4 - Instrukcje sterujące</title>
	</head>

	<body>
		<?php
			$x=49;
			if ($x%2==0 && $x%3==0)
			{
				echo "Liczba $x jest liczbą parzystą i podzileną przez 3";
			}
			elseif ($x%2!=0 && $x%3==0)
			{
				echo "Liczba $x jest liczbą nieparzystą i podzielną przez 3";
			}
			elseif ($x%2==0 && $x%3!=0)
			{
				echo "Liczba $x jest liczbą parzystą i niepodzielną przez 3";
			}
			else
			{
				echo "Liczba $x jest liczbą nieparzystą i niepodzielną przez 3";
			}
		?>
	</body>

</html>