<html>
<head>
	<meta charset="utf-8">
	<title>Przykład 49.2 - Funkcję i ich zastosowanie</title>
</head>
<body>
	
	<?php
		function wyrazenie($x, $y, $z)
		{
			$wynik=2*$x-0.5*$y+$z/2;
			echo "Wartość wyrażenia dla liczb $x, $y, $z wynosi ".$wynik;
			return $wynik;
		}
	?>

</body>
</html>