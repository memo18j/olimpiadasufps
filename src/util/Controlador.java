package util;

import java.sql.Date;


import java.util.List;

import entities.Deporte;
import entities.Equipo;
import entities.Escenario;
import entities.Funcionario;
import entities.Inscripcion;

import entities.Partidoequipo;
import entities.Usuario;
import modelo.DeporteDao;
import modelo.EquipoDao;
import modelo.EscenarioDao;
import modelo.FuncionarioDao;
import modelo.GenericDao;
import modelo.InscripcionDao;

import modelo.PartidoEquipoDao;
import modelo.UsuarioDao;

public class Controlador {

	public void registrarDeporte(String nombre){
		
	    Deporte d = new Deporte(nombre);
	    GenericDao<Deporte> usDao = new DeporteDao();
	    usDao.insert(d);

	}
	
	public void eliminarDeporte(int id) {
		
		GenericDao<Deporte> usDao= new DeporteDao();
		Deporte u = usDao.find(id);
		System.out.println(u);
		usDao.delete(u);
		
	}
	
	public void ActualizarDeporte(int id,String nombre) {
		Deporte u = new Deporte(id,nombre);
		GenericDao<Deporte> usDao= new DeporteDao();
		usDao.update(u);
		
	}
	
	public boolean login(String nombre,String password){
		System.out.println("juancho");
		GenericDao<Usuario> usDao= new UsuarioDao();
		Usuario us= usDao.find(nombre);
		System.out.println(us);
		System.out.println("1234");
		if(us == null){
			System.out.println("jua");
			return false;
		}
		
		else if(us.getNombre().equals(nombre) && us.getContrasena().equals(password)){
			System.out.println("juan");
			return true;
		}else {
			System.out.println("juanch");
			return false;
		}
		
		
	}
	
	public Usuario buscarUsuario(String nombre) {
			
			GenericDao<Usuario> us= new UsuarioDao();
			Usuario u = us.find(nombre);
			return u;
	}
	
	
	public void registrarEscenario(String nombre){
		
		Escenario d = new Escenario(nombre);
	    GenericDao<Escenario> usDao = new EscenarioDao();
	    usDao.insert(d);

	}
	
	public void eliminarEscenario(int id) {
		
		GenericDao<Escenario> usDao= new EscenarioDao();
		Escenario u = usDao.find(id);
		System.out.println(u);
		usDao.delete(u);
		
	}
	
	public void ActualizarEscenario(int id,String nombre) {
		Escenario u = new Escenario(id,nombre);
		GenericDao<Escenario> usDao= new EscenarioDao();
		usDao.update(u);
		
	}
	
    public void registrarEquipo(String delegado,String nombre,String telefono){
		
	    Equipo d = new Equipo(delegado,nombre,telefono);
	    GenericDao<Equipo> usDao = new EquipoDao();
	    usDao.insert(d);

	}
    
    public List<Equipo> ListarEquipo() {
		GenericDao<Equipo> usDao= new EquipoDao();
		List<Equipo> u =  usDao.list();
		return u;
		
	}
	
	public void eliminarDelegacion(int id) {
		
		GenericDao<Equipo> usDao = new EquipoDao();
		Equipo u = usDao.find(id);
		System.out.println(u);
		usDao.delete(u);
		
	}
	
	public void ActualizarDelegacion(int id,String delegado,String nombre,String telefono) {
		Equipo d = new Equipo(id,delegado,nombre,telefono);
		GenericDao<Equipo> usDao = new EquipoDao();
		usDao.update(d);
		
	}
	
	public void registrarFuncionario( String nombre, int idequipo){
		
		Funcionario f = new Funcionario(nombre);
		GenericDao<Equipo> dDao = new EquipoDao();
		Equipo d = dDao.find(idequipo);
		f.setEquipo(d);
		GenericDao<Funcionario> fDao = new FuncionarioDao();
		fDao.insert(f);
	    
	}
	
	public void eliminarFuncionario(int id){
		GenericDao<Funcionario> fDao = new FuncionarioDao();
		Funcionario f = fDao.find(id);
		System.out.println(f);
		fDao.delete(f);
	}
	
	public void actualizarFuncionario(int id, int idequipo, String nombre){
		Funcionario f = new Funcionario(id,nombre);
		GenericDao<Equipo> dDao = new EquipoDao();
		Equipo d = dDao.find(idequipo);
		f.setEquipo(d);
		GenericDao<Funcionario> fDao = new FuncionarioDao();
		fDao.update(f);
	}
	
	public void registrarInscripcion(int idequipo, int iddeporte, String grupo){
		Inscripcion i = new Inscripcion(grupo);
		GenericDao<Equipo> dDao = new EquipoDao();
		Equipo d = dDao.find(idequipo);
		i.setEquipo(d);
		GenericDao<Deporte> deDao = new DeporteDao();
		Deporte de = deDao.find(iddeporte);
		i.setDeporte(de);
		GenericDao<Inscripcion> iDao = new InscripcionDao();
		iDao.insert(i);
	}
	
	public void eliminarInscripcion(int id){
		GenericDao<Inscripcion> fDao = new InscripcionDao();
		Inscripcion f = fDao.find(id);
		System.out.println(f);
		fDao.delete(f);
	}
	
	public void actualizarInscripcion(int id, int idequipo, int iddeporte, String grupo){
		Inscripcion i = new Inscripcion(id,grupo);
		GenericDao<Equipo> dDao = new EquipoDao();
		Equipo d = dDao.find(idequipo);
		i.setEquipo(d);
		GenericDao<Deporte> deDao = new DeporteDao();
		Deporte de = deDao.find(iddeporte);
		i.setDeporte(de);
		GenericDao<Inscripcion> iDao = new InscripcionDao();
		iDao.update(i);
	}
	
//	public void registrarPartido(Date fecha){
//		Partido p = new Partido(fecha);
//		GenericDao<Partido> dDao = new PartidoDao();
//		dDao.insert(p);
//	}
//	
//	public void eliminarPartido(int id){
//		GenericDao<Partido> dDao = new PartidoDao();
//		Partido p = dDao.find(id);
//		dDao.delete(p);
//	}
//	
//	public void actualizarPartido(int id, Date fecha){
//		Partido p = new Partido(id,fecha);
//		GenericDao<Partido> dDao = new PartidoDao();
//		dDao.update(p);
//	}
	
//	public void registrarPartidoEquipo(int idpartido, int idequipo){
//		Partidoequipo pe = new Partidoequipo();
//		GenericDao<Equipo> dDao = new EquipoDao();
//		Equipo d = dDao.find(idequipo);
//		pe.setEquipo(d);
//		GenericDao<Partido> deDao = new PartidoDao();
//		Partido de = deDao.find(idpartido);
//		pe.setPartido(de);
//		GenericDao<Partidoequipo> iDao = new PartidoEquipoDao();
//		iDao.insert(pe);
//	}
//	
//	public void eliminarPartidoEquipo(int id){
//		GenericDao<Partidoequipo> iDao = new PartidoEquipoDao();
//		Partidoequipo pe = iDao.find(id);
//		iDao.delete(pe);
//	}
//	
//	public void actualizarPartidoEquipo(int id, int idpartido, int idequipo){
//		Partidoequipo pe = new Partidoequipo(id);
//		GenericDao<Equipo> dDao = new EquipoDao();
//		Equipo d = dDao.find(idequipo);
//		pe.setEquipo(d);
//		GenericDao<Partido> deDao = new PartidoDao();
//		Partido de = deDao.find(idpartido);
//		pe.setPartido(de);
//		GenericDao<Partidoequipo> iDao = new PartidoEquipoDao();
//		iDao.update(pe);
//	}
	
//	public void registrarNovedadPartido(int idpartido, int idfuncionario, int idnovedad){
//		Novedadpartido pe = new Novedadpartido();
//		GenericDao<Novedad> dDao = new NovedadDao();
//		Novedad d = dDao.find(idnovedad);
//		pe.setNovedad(d);
//		GenericDao<Partidoequipo> deDao = new PartidoEquipoDao();
//		Partidoequipo de = deDao.find(idpartido);
//		pe.setPartidoequipo(de);
//		GenericDao<Funcionario> fDao = new FuncionarioDao();
//		Funcionario f = fDao.find(idfuncionario);
//		pe.setFuncionario(f);
//		GenericDao<Novedadpartido> iDao = new NovedadPartidoDao();
//		iDao.insert(pe);
//	}
//	
//	public void eliminarNovedadPartido(int id){
//		GenericDao<Novedadpartido> iDao = new NovedadPartidoDao();
//		Novedadpartido pe = iDao.find(id);
//		iDao.delete(pe);
//	}
//	
//	public void actualizarNovedadPartido(int id,int idpartido, int idfuncionario, int idnovedad){
//		Novedadpartido pe = new Novedadpartido(id);
//		GenericDao<Novedad> dDao = new NovedadDao();
//		Novedad d = dDao.find(idnovedad);
//		pe.setNovedad(d);
//		GenericDao<Partidoequipo> deDao = new PartidoEquipoDao();
//		Partidoequipo de = deDao.find(idpartido);
//		pe.setPartidoequipo(de);
//		GenericDao<Funcionario> fDao = new FuncionarioDao();
//		Funcionario f = fDao.find(idfuncionario);
//		pe.setFuncionario(f);
//		GenericDao<Novedadpartido> iDao = new NovedadPartidoDao();
//		iDao.update(pe);
//	}
	
//	public void registrarGrupo(String letra, int deporte, int delegacion){
//		
//		Grupo g = new Grupo(letra);
//		GenericDao<Delegacion> dDao = new DelegacionDao();
//		Delegacion d = dDao.find(delegacion);
//		GenericDao<Deporte> deDao = new DeporteDao();
//		Deporte de = deDao.find(deporte);
//		g.setDeporte(de);
//		g.setDelegacion(d);
//		GenericDao<Grupo> gDao = new GrupoDao();
//		gDao.insert(g);
//	}
}
