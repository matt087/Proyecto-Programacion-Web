<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Resultado Consulta</title>
</head>
<body>
<%
String nombre = request.getParameter("txt_nombre");
String telefono = request.getParameter("txt_telefono");
String correo = request.getParameter("txt_correo");
String genero = request.getParameter("genero");
String foto = request.getParameter("img_file");

out.print("Su nombre es: "+nombre+"</br>");
out.print("Su telefono es: "+telefono+"</br>");
out.print("Su imagen es: "+foto+"</br>");
%>

</body>
</html>