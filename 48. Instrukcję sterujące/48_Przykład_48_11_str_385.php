<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Przykład 48.11 - Instrukcje sterujące</title>
	</head>

	<body>
		<?php
			$i=1;				//wartość początkowa dla pętli
			while($i<=50)		//warunek zakończenia pętli
			{
				if($i%2==0)
				echo $i."\t";
				$i++;			//zwiększenie i o jeden
			}
		?>
	</body>

</html>