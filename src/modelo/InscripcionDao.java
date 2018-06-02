package modelo;

import entities.Inscripcion;
import util.Conexion;

public class InscripcionDao 
extends Conexion< Inscripcion> 
implements GenericDao< Inscripcion>{
	
public  InscripcionDao() {
	super( Inscripcion.class);
}

}