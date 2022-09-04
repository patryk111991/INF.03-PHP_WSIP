<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Przykład 48.13 - Instrukcje sterujące</title>
	</head>

	<body>
		<?php
			$x = 245;
			$y = 27;
			while ($x != $y)
			{
				if ($x < $y) {
				//zamiana liczb miejscami, aby różnica była dodatnia
				$pomoc = $x;
				$x = $y;
				$y = $pomoc;
				}
				$x = $x - $y;
			}
			echo "Największy wspólny dzielnik wynosi: $x";
		?>
	</body>

</html>