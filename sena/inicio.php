<?php 
	session_start();
	if (!$_SESSION["newsession"]){
		header("Location: http://localhost/sena/");
		die();
	}
	else {
		$nombre = '';
		$link = mysql_connect('localhost', 'cata');
		mysql_select_db('proyectoawe') or die('No se pudo seleccionar la base de datos: '.mysql_error());
		$query = 'SELECT UsNombre FROM usuario WHERE UsDocumentoIdentidad ='.$_SESSION["newsession"];
		$result = mysql_query($query) or die('Consulta fallida: ' . mysql_error()); 
		$line = mysql_fetch_array($result, MYSQL_ASSOC);
		foreach ($line as $key ) {
			$nombre = $key;
		}
		?>
	<h3 >Hola <?php echo $nombre;  ?> </h3> 
	<a href="http://localhost/sena/salir.php">Salir</a>

	}
 ?>