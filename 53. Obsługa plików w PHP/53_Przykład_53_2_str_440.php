<html>
<head>
	<meta charset="utf-8">
	<title>Przykład 53.2 - Obsługa plików w PHP</title>
</head>
<body>
	
	<?php
		$plik=fopen("pliki_php/liczby.txt","a");
			for($i=0;$i<10;$i++)
			{
				$tab[$i]=rand(10,20);
				fwrite($plik,$tab[$i]."\n");
			}
		fclose($plik);
	?>

</body>
</html>