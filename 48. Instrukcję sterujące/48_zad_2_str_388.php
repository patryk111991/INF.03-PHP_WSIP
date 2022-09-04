<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Zadanie 2 strona 388 - Instrukcje sterujące</title>
	</head>

	<body>
		<?php
			$x = 8;
			$y = 6;
			$z = 10;
			if (($x+$y>$z) && ($x+$z>$y) && ($y+$z>$x))
			{
			 if (($x*$x+$y*$y==$z*$z) || ($x*$x+$z*$z==$y*$y) || ($z*$z+$y*$y==$x*$x)) echo "To jest to trójkąt prostokątny";
				else echo "To nie jest trójkąt pitagrorejski";
			}
			else echo "Nie można zbudować trójkąta";
		?>
	</body>

</html>