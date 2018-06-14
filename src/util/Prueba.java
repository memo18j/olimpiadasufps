package util;

import entities.Deporte;
import entities.Equipo;
import modelo.DeporteDao;
import modelo.EquipoDao;

public class Prueba {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		DeporteDao dd = new DeporteDao();
//		Deporte d = new Deporte("Futbol");
//		dd.insert(d);
		
		EquipoDao ee = new EquipoDao();
		Equipo e = new Equipo("memo", "pepe", "3456");
		ee.insert(e);

	}

}
