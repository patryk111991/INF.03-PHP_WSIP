<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Przykład 48.9 - Instrukcje sterujące</title>
	</head>

	<body>
		<?php
			$suma=0;
			for ($i=1;$i<=20; $i++)
			{
				$tab[$i]=rand(1,20);
					echo $tab[$i]."\t";
				$suma+=$tab[$i];
			}
			echo "<br>Suma wartości tablicy wynosi $suma";
		?>
	</body>

</html>