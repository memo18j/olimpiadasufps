package modelo;

import entities.Partido;
import util.Conexion;

public class PartidoDao 
extends Conexion<Partido> 
implements GenericDao<Partido>{
	
public PartidoDao() {
	super(Partido.class);
}

}