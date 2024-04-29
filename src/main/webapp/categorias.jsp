<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link href="css/stylesheet.css" rel="stylesheet" type="text/css"/>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Sedan&display=swap" rel="stylesheet">
	<title>Eco-Garden - Categorías</title>
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
		<div class="container_cat">
				<form id="consulta-cat" action="consulta_categoria.jsp" method="post">
					<div class="busqueda_categoria">
						<label>Categoría: </label>
						<% 
					        Categoria categoria = new Categoria();
					        String opcionesCategoria = categoria.mostrarCategoria();
					        out.println(opcionesCategoria);
					    %>
					</div>
					<input type="submit" class="boton_c">
				</form>				
		</div>
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