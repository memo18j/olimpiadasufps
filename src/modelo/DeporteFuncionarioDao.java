package modelo;

import entities.Deportefuncionario;
import util.Conexion;

public class DeporteFuncionarioDao 
extends Conexion<Deportefuncionario> 
implements GenericDao<Deportefuncionario>{
	
public DeporteFuncionarioDao() {
	super(Deportefuncionario.class);
}

}
