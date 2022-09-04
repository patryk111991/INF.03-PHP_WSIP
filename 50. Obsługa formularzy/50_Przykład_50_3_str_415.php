<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Przykład 50.3 - Obsługa formularzy</title>
</head>
<body>
	<?php
		if (isset($_POST[imie]))
		{
			echo "Masz na imię ".$_POST['imie'];
		}
	?>
	
</body>
</html>