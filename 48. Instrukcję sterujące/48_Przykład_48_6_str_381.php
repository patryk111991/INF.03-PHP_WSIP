<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Przykład 48.6 - Instrukcje sterujące</title>
	</head>

	<body>
		<?php
			$dzialanie='*';
			$x=32;
			$y=0;
				if ($dzialanie=='+')
					echo "Suma $x oraz $y wynosi: ".($x+$y);
				elseif ($dzialanie=='-')
					echo "Różnica $x oraz $y wynosi: ".($x-$y);
				elseif ($dzialanie=='*')
					echo "Iloczyn $x oraz $y wynosi: ".($x*$y)
				elseif ($dzialanie=='/')
				{
					if ($y!=0) echo "Iloraz $x przez $y wynosi: ".($x/$y);
					else echo "Nie mogę wykonać dzielenia po y=0!";
				}
				elseif ($dzialanie=='%')
					echo "Reszta z dzielenia $x przez $y wynosi: ".($x%$y);
					else echo "Nie wybrałeś żadnego działania";
		?>
	</body>

</html>