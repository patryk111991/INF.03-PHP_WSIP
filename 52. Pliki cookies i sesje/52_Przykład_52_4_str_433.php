<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Przykład 52.4 - Pliki cookies i sesje</title>
</head>
<body>
	
	<?php
		session_start();
		echo "Indentyfikator sesji: ".session_id();
		session_destroy();
	?>

</body>
</html>