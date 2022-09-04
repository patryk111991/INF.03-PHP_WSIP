<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Przykład 48.14 - Instrukcje sterujące</title>
	</head>

	<body>
		<?php
			$i=1;			//wartość początkowa dla pętli
			do
			{
				if($i%2==0)
				echo $i."\t";
				$i++;		//zwiększenie i o jeden
			} while($i<=50);	//warunek zakończenia pętli
		?>
	</body>

</html>