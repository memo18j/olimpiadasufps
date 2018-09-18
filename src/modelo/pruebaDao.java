package modelo;


import entities.prueba;
import util.Conexion;

public class pruebaDao 
extends Conexion<prueba> 
implements GenericDao<prueba>{
	public pruebaDao() {
		super(prueba.class);
	}


}

