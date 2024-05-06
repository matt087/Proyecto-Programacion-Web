<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
		<link href="css/stylesheet.css" rel="stylesheet" type="text/css"/>
	<title>Eco-Garden - Productos</title>
</head>
<script type="text/javascript">
        window.onload = function() 
        {
            var mensaje = '<%= request.getParameter("mensaje") %>';
            if (mensaje === "actualizado") 
            {
                alert("¡Producto actualizado exitosamente!");
            } 
            else if (mensaje === "error") 
            {
                alert("Error en la actualización del producto.");
            }
            else if (mensaje === "eliminado")
           	{
            	alert("¡Producto eliminado exitosamente!")
           	}
            else if (mensaje === "error2") 
            {
                alert("Error en la eliminación del producto.");
            }
        };
    </script>

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
				<div class="center">
					<div class="down">
						<h2>Listado de Productos</h2>
						<%
							Producto pro = new Producto();
							String tabla = pro.consultarTodo();
							out.print(tabla);
						%>
					</div>
				</div>
				<div class='derecha'>
					<a href="ingreso_producto.jsp">Ingresar productos</a>
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