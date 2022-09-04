<html>
<head>
	<meta charset="utf-8">
	<title>Przykład 49.4 - Funkcję i ich zastosowanie</title>
</head>
<body>
	
	<?php
		$x=7;
		function pole()
		{
			global $x;		//x jest zmienną globalną
			$pole=$x*$x;
			echo "Pole kwadratu o boku $x wynosi: ".$pole;
		}
		pole();
	?>

</body>
</html>