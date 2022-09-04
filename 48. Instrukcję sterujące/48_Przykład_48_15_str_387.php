<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Przykład 48.15 - Instrukcje sterujące</title>
	</head>

	<body>
		<?php
			$s=0;
			$tab=[7,45,23,78,90,12,34,7,-4,3];
			foreach ($tab as $w)
			{
				echo $w."<br>";
				$s+=$w;
			}
			echo "Suma wartości w tablicy wynosi: $s";
		?>
	</body>

</html>