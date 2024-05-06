<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link href="css/stylesheet.css" rel="stylesheet" type="text/css"/>
	<title>Eco-Garden - Ingreso de Productos</title>
</head>
<body>
	<main>
		<header>
			<h1>Eco-Garden <span>La mejor tienda de plantas del Ecuador</span></h1>
		</header>
		<nav>
			<a href="index.jsp">Home</a>
			<a href="productos.jsp">Listado de Productos</a>
			<a href="categorias.jsp">Categorías</a>
			<a href="login.jsp">Log-In</a>
		</nav>
		<h1>Resultado de ingreso</h1>
		<%
			Producto pro = new Producto();
			String id = request.getParameter("txt_id");
			String cat = request.getParameter("cmbCategoria");
			String nombre = request.getParameter("txt_nombre");
			String cantidad = request.getParameter("txt_cantidad");
			String precio = request.getParameter("txt_precio");
			String directorio = request.getParameter("imagen");
			directorio="C:/Users/USUARIO/eclipse-workspace/Practica_5/src/main/webapp/resources/planta2.jpg";
			String res = pro.ingresarProducto(Integer.parseInt(id), Integer.parseInt(cat), nombre, Integer.parseInt(cantidad), Float.parseFloat(precio), directorio);
			out.print(res);
		%>
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