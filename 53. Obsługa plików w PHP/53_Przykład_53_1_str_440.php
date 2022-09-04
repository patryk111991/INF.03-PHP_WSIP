<html>
<head>
	<meta charset="utf-8">
	<title>Przykład 53.1 - Obsługa plików w PHP</title>
</head>
<body>
	
	<?php
		$plik=fopen("pliki_php/wizytowka.txt","a");
		$dane="Anna Kowalska";
		fwrite($plik,$dane);
		fclose($plik);
	?>

</body>
</html>