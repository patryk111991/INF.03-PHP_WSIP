<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Przykład 51.6 - Obsługa bazy danych w PHP</title>
	<link rel="stylesheet" href="51_Przykład_51_6_str_423.css" type="text/css" />
</head>
<body>
	<section id="kontener">
		<section id="baner">
			Hurtownia owoców
		</section>
		
		<section id="prawy">
			<?php
				$conn=mysqli_connect('localhost','root','','skupow');
				$z1=mysqli_query($conn,'select * from firma');
				echo "<p>FIRMY KORZYSTAJĄCE Z HURTOWNI</p>";
				while ($row=mysqli_fetch_array($z1))
				{
					echo "<b>".$row['Nazwa'].'</b>,		'.$row['Miasto'].',		'.$row['Adres'].'<br>';
				}
				$z2=mysqli_query($conn,'SELECT Nazwa,ilosc,Datazamowienia FROM owoce, zamowienie WHERE IdFirmy=1 AND owoce.id_owoce=zamowienie.id_owoce ORDER BY Nazwa');
				echo "<p>ZAMÓWIENIA FIRMY Nowak&&Kowalski</p>";
				echo '<table><tr><th>Nazwa owocu</th><td>Ilość w kg</th><td>Dane zamówienia</th></tr>';
				while ($row=mysqli_fetch_array($z2))
				{
					echo "<tr><td>".$row['Nazwa'].'</td><td>'.$row['ilosc'].'</td><td> '.$row['Datazamowienia'].'</td></tr>';
				}
				echo "</table>";
				mysqli_close($conn);
			?>
		</section>
		
		<section id="galeria">
			<table>
				<tr>
					<td> <img src="51_6/czeresnia.jpg" class="obrazki"></td>
					<td> <img src="51_6/gruszka.jpg" class="obrazki"></td>
					<td> <img src="51_6/truskawka.jpg" class="obrazki"></td>
					<td> <img src="51_6/sliwka.jpg" class="obrazki"></td>
					<td> <img src="51_6/jagoda.jpg" class="obrazki"></td>
				</tr>
			</table>
		</section>
	</section>
	
</body>
</html>