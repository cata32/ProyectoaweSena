
<?php
// Conectando, seleccionando la base de datos
$link = mysql_connect('localhost', 'cata');
if (!$link){
	die('<p>error en la conexion</p>'.mysql_error());
}else{
	echo 'Conexion satisfactoria';
}

mysql_select_db('proyectoawe') or die('No se pudo seleccionar la base de datos: '.mysql_error());
$name = $_GET['name'];
$last_name = $_GET['last_name'];
$document = $_GET['document'];
$password = $_GET['password'];
$genero = $_GET['genero'];
$telefono = $_GET['telefono'];
$guardar = "INSERT INTO usuario(UsNombre, UsApellido, UsGenero, UsTelefono, UsPassword, UsDocumentoIdentidad) VALUES ('".$name."','".$last_name."','".$genero."','".$telefono."','".$password."','".$document."')";
$result = mysql_query($guardar) or die('no guardo: ' . mysql_error());
//------------------------------------------------------------------------------------------------
// Realizar una consulta MySQL
$query = 'SELECT * FROM usuario';
$result = mysql_query($query) or die('Consulta fallida: ' . mysql_error());

// Imprimir los resultados en HTML
echo "<table>\n";
while ($line = mysql_fetch_array($result, MYSQL_ASSOC)) {
    echo "\t<tr>\n";
    foreach ($line as $col_value) {
        echo "\t\t<td>$col_value</td>\n";
    }
    echo "\t</tr>\n";
}
echo "</table>\n";

// Liberar resultados
mysql_free_result($result);

// Cerrar la conexión
mysql_close($link);
?>
