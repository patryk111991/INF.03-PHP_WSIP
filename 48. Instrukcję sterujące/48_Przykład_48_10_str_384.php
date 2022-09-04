<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Przykład 48.10 - Instrukcje sterujące</title>
	</head>

	<body>
		<?php
			echo '<table style="width:300px; height:300px;">';
			for ($i=1;$i<=10;$i++)
			{
				echo "<tr";
				for($j=1;$j<=10;$j++)
				{
					echo "<td>".($i*$j)."</td>";
				}
				echo "</tr>";
			}
			echo "</table>";
		?>
	</body>

</html>