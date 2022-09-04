<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Przykład 48.2 - Instrukcje sterujące</title>
	</head>

	<body>
		<?php
			$x=125;
			if ($x%2==0)
			{
				echo "$x".'<br>';
				echo '<u>Liczba jest parzysta</u>';
			}
			else
			{
				echo "$x".'<br>';
				echo '<u>Liczba jest nie parzysta</u>';
			}
		?>
	</body>

</html>