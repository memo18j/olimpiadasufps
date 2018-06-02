package modelo;

import entities.Equipo;
import util.Conexion;

public class EquipoDao 
extends Conexion<Equipo> 
implements GenericDao<Equipo>{
	
public EquipoDao() {
	super(Equipo.class);
}

}