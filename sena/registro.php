<?php 
echo "Registro"
 ?>
 <label>Usuario</label>
 <form action="guardar.php" method="get" accept-charset="utf-8">
 	<label>Nombre</label>
 	<input id="name" name="name"></input>
 	<label>Apellido</label>
 	<input id="last_name" name="last_name"></input>
 	<label>Documento</label>
 	<input id="document" name="document"></input>
 	<label>Genero</label>
 		<select name="genero" >
 			<option value="masculino">Masculino</option>
 			<option value="femenino">Femenino</option>
 		</select>
 	<label>Telefono</label>
 	<input id="telefono" name="telefono"></input>
 	<label>Password</label>
 	<input id="password" name="password"></input>
 	<button type="submit">Ver</button>
 </form>