package com.productos.negocio;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.productos.datos.*;

public class Usuario {
	
	private int id;
	private int perfil;
	private int estado_civil;
	private String cedula;
	private String nombre;
	private String correo;
	private String clave;
	private String telefono;

	public int getId() 
	{
		return id;
	}

	public void setId(int id) 
	{
		this.id = id;
	}

	public int getPerfil() 
	{
		return perfil;
	}

	public void setPerfil(int perfil) 
	{
		this.perfil = perfil;
	}

	public int getEstado_civil() 
	{
		return estado_civil;
	}

	public void setEstado_civil(int estado_civil) 
	{
		this.estado_civil = estado_civil;
	}

	public String getCedula() 
	{
		return cedula;
	}

	public void setCedula(String cedula) 
	{
		this.cedula = cedula;
	}

	public String getNombre() 
	{
		return nombre;
	}

	public void setNombre(String nombre) 
	{
		this.nombre = nombre;
	}

	public String getCorreo() 
	{
		return correo;
	}

	public void setCorreo(String correo) 
	{
		this.correo = correo;
	}

	public String getClave() 
	{
		return clave;
	}

	public void setClave(String clave) 
	{
		this.clave = clave;
	}

	public String getTelefono() 
	{
		return telefono;
	}

	public void setTelefono(String telefono) 
	{
		this.telefono = telefono;
	}
	
	public String ingresarCliente()
	{
		String result="";

		Conexion con=new Conexion();
		PreparedStatement pr=null;
		String sql="INSERT INTO tb_usuario (id_us, id_per, id_est, nombre_us,"
				+ "cedula_us,correo_us,clave_us, telefono_us) "
				+ "VALUES(?,?,?,?,?,?,?,?)";
		try{
			pr=con.getConexion().prepareStatement(sql);
			pr.setInt(1,this.getId());
			pr.setInt(2,2);
			pr.setInt(3, this.getEstado_civil());
			pr.setString(4, this.getNombre());
			pr.setString(5, this.getCedula());
			pr.setString(6, this.getCorreo());
			pr.setString(7, this.getClave());
			pr.setString(8, this.getTelefono());

			if(pr.executeUpdate()==1)
			{
				result="Insercion correcta";
			}
			else
			{
				result="Error en insercion";
			}
		}
		catch(Exception ex)
		{
			result=ex.getMessage();
			System.out.print(result);
		}
		finally
		{
			try
			{
				pr.close();
				con.getConexion().close();
			}
			catch(Exception ex)
			{
				System.out.print(ex.getMessage());
			}
		}
		return result; 
	}
	
	
	//modificar este método
	public String getUsuarios()
	{
		String sql="SELECT COUNT(*) FROM tb_usuario";
		ResultSet rs=null;
		Conexion con=new Conexion();
		String usuarios="";
		try
		{
			rs=con.Consulta(sql);
			while(rs.next())
			{
				usuarios=String.valueOf(rs.getInt(1));
			}
		}
		catch(SQLException e)
		{
			System.out.print(e.getMessage());
		}
		return usuarios;
	}
}
