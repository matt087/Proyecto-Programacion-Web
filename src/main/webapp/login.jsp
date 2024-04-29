<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">	<link rel="stylesheet"  href="css/stylesheet.css" type="text/css"/>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Sedan&display=swap" rel="stylesheet">
	<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
	<title>Log-In</title>
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
		<div class="center">
			<div class="agrupacion">
				<form action="">
					<h1>Inicio de Sesión</h1>
					<div class="input-box">
						<input type="text" placeholder="Usuario" required>
						<i class='bx bx-user' ></i>
					</div>
					<div class="input-box">
						<input type="password" placeholder="Contraseña" required>
						<i class='bx bx-lock-alt' ></i>
					</div>
					<div class="recordar">
						<label>
							<input type="checkbox">Recordar contraseña
						</label>
						<a href="#">Olvidé mi contraseña</a>
					</div>
					<button class="btn_login" type="submit">Iniciar Sesión</button>
					<div class="registro">
						<p>¿No tienes una cuenta?
							<a href="#">Regístrate</a>
						</p>
					</div>
				</form>
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