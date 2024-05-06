<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/stylesheet.css" rel="stylesheet" type="text/css" />
<title>Eco-Garden - Ingreso de Productos</title>
</head>

<body>
	<main>
		<header>
			<h1>
				Eco-Garden <span>La mejor tienda de plantas del Ecuador</span>
			</h1>
		</header>
		<nav>
			<a href="index.jsp">Home</a> <a href="productos.jsp">Listado de
				Productos</a> <a href="categorias.jsp">Categorías</a> <a
				href="login.jsp">Log-In</a>
		</nav>
		<form class='center' id="registro" action="respuesta_productos.jsp"
			method="post">
			<fieldset>
				<h1>Registro de Productos</h1>
				<label class="label">ID: </label> <input type="text" name="txt_id"
					class="input_izq" placeholder="Ingrese la ID: " required
					oninvalid="this.setCustomValidity('Ingrese su número de cédula')"
					maxlength="10"> <label class="label">Categoría: </label>
				<%
			            Categoria categoria = new Categoria();
				        String opcionesCategoria = categoria.mostrarCategoria2();
				        out.println(opcionesCategoria);
					%>

				<label class="label">Nombre: </label> <input type=text
					placeholder="Ingrese el nombre del producto: " class="input_izq"
					name="txt_nombre" required
					oninvalid="this.setCustomValidity('Complete este campo')">

				<label class="label">Cantidad: </label> <input type="number"
					value="5" min="5" placeholder="Ingrese la cantidad: "
					class="input_izq" name="txt_cantidad" required
					oninvalid="this.setCustomValidity('Complete este campo')">

				<label class="label">Precio: </label> <input type="number"
					step="0.01" placeholder="Ingrese el precio: " class="input_izq"
					name="txt_precio" required
					oninvalid="this.setCustomValidity('Complete este campo')">

				<label class="label">Imagen: </label> <input type="file"
					accept=".jpg" class="input_izq" name="imagen" id="imagen">

				<div class="envio">
					<input type="submit" class="boton"> 
					<input type="reset" class="boton">
				</div>
			</fieldset>
		</form>
		<script>
	        function mostrarRuta() 
	        {
	            const input = document.getElementById('imagen');
	            const rutaArchivo = document.getElementById('rutaArchivo');
	            
	            if (input.files && input.files[0]) {
	                const archivo = input.files[0];
	                const ruta = URL.createObjectURL(archivo);
	                rutaArchivo.textContent = 'Ruta del archivo: ' + ruta;
	            }
	        }
	    </script>
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