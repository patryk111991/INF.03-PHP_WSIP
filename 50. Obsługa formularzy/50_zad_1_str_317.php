<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Zadanie 1 - Obsługa formularzy</title>
	<style>
		
	</style>
</head>
<body>

			<?php
				echo "<p>Dokonałeś nastepującego zamówienia: </p>";
				$linia=$_POST['linia'];
				$kratka=$_POST['kratka'];
				$gladki=$_POST['gladki'];
				echo "<ul><li>Zeszyty w linie: $linia sztuki po (1,5 zł/szt.) </li></ul>";
				echo "<ul><li>Zeszyty w kratkę: $kratka sztuki po (1,3 zł/szt.) </li></ul>";
				echo "<ul><li>Zeszyty gładkie: $gladki sztuki po (1,0 zł/szt.) </li></ul>";
				$koszt=$linia*1.50+$kratka*1.30+$gladki*1.00;
				echo "<h3>Koszt twojego zamówienia wynosi: $koszt zł.</h3>";
			?>

</body>
</html>