<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Przykład 52.5 - Pliki cookies i sesje</title>
</head>
<body>
	
	<?php
		session_start();
		if (!isset($_SESSION['liczba']))
		{
			$_SESSION['liczba']=0;
		}
		else
		{
			$_SESSION['liczba']=$_SESSION['liczba']+1;
			echo 'Odwiedziłeś nas: '.$_SESSION['liczba'];
		}
	?>

</body>
</html>