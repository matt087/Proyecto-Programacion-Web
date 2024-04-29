<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Sedan&display=swap" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<link href="css/stylesheet.css" rel="stylesheet" type="text/css"/>
	<title>Eco-Garden - Categorías</title>
</head>
<body>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
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
		<div class="center">
			<div class="down">
				<h2>Listado por Categorías</h2>
				<%
					String res = request.getParameter("cmbCategoria");
					int cat = Integer.valueOf(res);
					Producto pro = new Producto();
					String tabla = pro.buscarProductoCategoria(cat);
					out.print(tabla);
				%>
			</div>
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