<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link href="css/stylesheet.css" rel="stylesheet" type="text/css"/>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Sedan&display=swap" rel="stylesheet">
	<title>Eco-Garden - Afiliación</title>
</head>
<body>
	<main>
		<header>
			<h1>Eco-Garden</h1>
			<h2>La mejor tienda de plantas del Ecuador</h2>
		</header>
		<nav>
			<a href="index.jsp">Home</a>
			<a href="productos.jsp">Listado de Productos</a>
			<a href="categorias.jsp">Categorías</a>
			<a href="afiliacion.jsp">Afiliación</a>
			<a href="login.jsp">Log-In</a>
		</nav>
		<form class='center' id="registro" action="respuesta.jsp" method="post">
	        <fieldset>
	            <h1>Formulario de Registro</h1>
	            <div class="campo">
	                <label class="label">Nombre: </label>
	                <input type="text" placeholder="Ingresa tu Nombre" class="input_round" name="txt_nombre" required>
	            </div>
	            <div class="campo">
	                <label class="label">Teléfono: </label>
	                <input type="text" placeholder="Ingresa tu Teléfono" class="input_round" name="txt_telefono"required maxlength="10">
	            </div>
	            <div class="campo">
	                <label class="label">Correo: </label>
	                <input type="email" placeholder="Ingresa tu Email" class="input_round" name="txt_correo" required>
	            </div>
	            <div class="campo">
	                <label class="label">Copia de Cédula: </label>
	                <input type="file" name="img_file" accept=".jpg, .png, .jpeg">
	            </div>
	            <div class="campo">
	                <label class="label">Género: </label>
	                <input type="radio" value="Masculino" name="genero">
	                <label>Masculino</label>
	                <input type="radio" value="Femenino" name="genero">
	                <label>Femenino</label>
	            </div>
	            <div class="campo">
	                <label class="label">Color de Membresía: </label>
	                <input type="color" name="txt_color">
	            </div>
	            <div class="envio">
	                <input type="submit" class="boton">
	                <input type="reset" class="boton">
	            </div>     
	        </fieldset>
            </form> 
		<footer>
			 <ul>
				 <li>Facebook</li>
				 <li>Instagram</li>
				 <li>Twitter</li>
			 </ul>
 		</footer>
	</main>
</body>
</html>