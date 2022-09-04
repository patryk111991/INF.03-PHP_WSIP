<html>
<head>
	<meta charset="utf-8">
	<title>Przykład 53.4 - Obsługa plików w PHP</title>
</head>
<body>
	
	<?php
		$plik=fopen("pliki_php/liczby.txt","r");
		$i=0;
		while (!feof($plik))
		{
			$liczba[$i]=fgets($plik);
			echo $liczba[$i]."<br>";
		}
		fclose($plik);
	?>

</body>
</html>