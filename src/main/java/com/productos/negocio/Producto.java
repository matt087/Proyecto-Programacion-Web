package com.productos.negocio;

import java.sql.*;
import com.productos.datos.Conexion;

public class Producto {
	public String consultarTodo()
	{
		String sentencia="SELECT * FROM tb_producto ORDER BY id_pro";
		Conexion con=new Conexion();
		ResultSet rs=null;
		String tabla="<table class=\"table\"><thead><tr><th scope=\"col\">ID</th><th scope=\"col\">Producto</th><th scope=\"col\">Cantidad</th><th scope=\"col\">Precio</th></tr></thead><tbody><tr>";
		try 
		{
			rs=con.Consulta(sentencia);
			if(rs==null)
			{
				tabla="<p>No hay productos ingresados</p>";
			}
			else 
			{
				while(rs.next())
				{
					tabla+="<th scope=\"row\">"+rs.getInt(1)+"</th>"
					+ "<td>"+rs.getString(3)+"</td>"
					+ "<td>"+rs.getString(4)+"</td>"
					+ "<td>"+rs.getDouble(5)+"</td>"
					+ "</tr>";
				}
				tabla+="</tbody></table>";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.print(e.getMessage());
		}
		return tabla;
	}

	
	public String buscarProductoCategoria(int cat)
	{
		String sentencia="SELECT nombre_pr, precio_pr FROM tb_producto WHERE id_cat="+cat;
		Conexion con=new Conexion();
		ResultSet rs=null;
		String resultado="<table class=\"table\"><thead><tr><th scope=\"col\">NOMBRE</th><th scope=\"col\">PRECIO</th></tr></thead><tbody><tr>";
		try
		{
			rs=con.Consulta(sentencia);
			if(rs==null)
			{
				resultado = "<p>No hay productos ingresados</p>";
			}
			else
			{
				while(rs.next())
				{
					resultado+="<td>"+ rs.getString(1)+"</td>"
					 + "<td>"+rs.getDouble(2)+"</td></tr>";
				}
				resultado+="</tbody></table>";
			}
			
		}
		catch(SQLException e)
		{
			System.out.print(e.getMessage());
		}
		return resultado;
	}
}
