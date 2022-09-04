<html>
<head>
	<meta charset="utf-8">
	<title>Przykład 53.5 - Obsługa plików w PHP</title>
</head>
<body>
	
	<?php
		$plik=fopen("pliki_php/liczby.txt","r");
		$i=0;
		while (!feof($plik))
		{
			$liczba[$i]=fgetc($plik);
			echo $liczba[$i]."<br>";
			$i++;
		}
		fclose($plik);
	?>

</body>
</html>