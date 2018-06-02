package modelo;

import entities.Partidoequipo;
import util.Conexion;

public class PartidoEquipoDao 
extends Conexion<Partidoequipo> 
implements GenericDao<Partidoequipo>{
	
public PartidoEquipoDao() {
	super(Partidoequipo.class);
}

}