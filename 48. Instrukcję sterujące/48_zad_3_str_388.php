<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Zadanie 3 strona 388 - Instrukcje sterujące</title>
	</head>

	<body>
		<?php
			for($i=0; $i<10; $i++)
			{
			   $numbers    [$i]=   rand(1,20);
			}
			echo "Wylosowane dziesięć liczb z zakresu <1,20>: ";
			for($i=0; $i<10; $i++)
			{
			   echo $numbers[$i]." ";
			}
			echo "\nIch średnia arytmetyczna: ".array_sum($numbers) / count($numbers);
		?>
	</body>

</html>