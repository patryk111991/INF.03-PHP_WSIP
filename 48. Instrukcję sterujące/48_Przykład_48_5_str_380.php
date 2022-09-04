<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Przykład 48.5 - Instrukcje sterujące</title>
	</head>

	<body>
		<?php
			$dzialanie='*';
			$x=32;
			$y=5;
			switch($dzialanie)
			{
				case '+':
				echo "Suma $x oraz $y wynosi: ".($x+$y);
				break;
				
				case '-':
				echo "Różnica $x oraz $y wynosi: ".($x-$y);
				break;
				
				case '*':
				echo "Iloczyn $x oraz $y wynosi: ".($x*$y);
				break;
				
				case '/':
				if ($y!=0) echo "Iloraz $x przez $y wynosi: ".($x/$y);
				else echo "Nie mogę wykonać dzielenia po y=0!";
				break;
				
				case '%':
				echo "Reszta z dzielenia $x przez $y wynosi: ".($x%$y);
				break;
				
				default:
				echo "Nie wybrałeś żadnego działania";
				break;
			}
		?>
	</body>

</html>