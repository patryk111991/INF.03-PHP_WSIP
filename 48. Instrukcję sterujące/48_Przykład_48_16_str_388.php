<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Przykład 48.16 - Instrukcje sterujące</title>
	</head>

	<body>
		<?php
			$tab = array( 'Anna' => 'Kowalska', 'Joanna' => 'Nowak', 'Jerzy' => 'Grzegorzewski', 'Piotr' => 'Nowak' );
			foreach ($tab as $klucz => $wartosc)
			echo $klucz." ".$wartosc."<br>";
		?>
	</body>

</html>