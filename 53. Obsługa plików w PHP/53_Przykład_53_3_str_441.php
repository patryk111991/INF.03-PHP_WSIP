<html>
<head>
	<meta charset="utf-8">
	<title>Przykład 53.3 - Obsługa plików w PHP</title>
</head>
<body>
	
	<?php
		$plik=fopen("pliki_php/wizytowka.txt","r");
		$tresc=fread($plik,4);
		echo $tresc;
		fclose($plik);
	?>

</body>
</html>