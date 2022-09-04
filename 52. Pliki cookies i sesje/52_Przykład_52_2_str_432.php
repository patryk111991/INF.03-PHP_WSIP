<?php
	if (!isset($_COOKIE['moje']))
	{
		setcookie('moje','ciacho1');
		$info="Ciasteczko nie jest ustawione";
	}
	else
	{
		$info="Ciasteczko jest ustawione, a jego wartością jest ".$_COOKIE['moje'];
	}
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Przykład 52.2 - Pliki cookies i sesje</title>
</head>
<body>
	
	<?php
		echo $info;
	?>

</body>
</html>