<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Przykład 50.5 - Obsługa formularzy</title>
	<style>
		#kontener
		{
			width: 550px;
			height: 150px;
			border:2px solid #330000;
			text-align: center;
			background-color: #CC9966;
		}
		#blok
		{
			width: 350px;
			float: left;
		}
		img
		{
			width: 200px;
			height: 150px;
		}
		#obraz
		{
			float: left;
		}
	</style>
</head>
<body>

	<div id="kontener">
		<div id="blok">
			<?php
				//sprawdzanie, czy pola zostały uzupełnione
				if (isset($_POST['adult']) && isset($_POST['child']))
				{
					//sprawdzanie, czy podane wartości są liczabmi
					if (is_numeric($_POST['adult']) && is_numeric($_POST['child']))
					{
						echo "<p>Dokonałeś nastepującego zamówienia: </p>";
						$norm=$_POST['adult'];  //pobranie liczby biletów normalnych
						$ulg=$_POST['child'];  //pobranie liczby biletów ulgowych
						echo "<ul><li>Bilety normalne: $norm sztuki </li>";
						echo "<li>Bilety ulgowe: $ulg sztuki</li></ul>";
						$koszt=$norm*27+$ulg*18;
						echo "<h3>Koszt twojego zamówienia wynosi: $koszt zł.</h3>";
					}
				}
			?>
		</div>
		
		<div id="obraz"><img src="multikino.png"></div>
		
	</div>

</body>
</html>