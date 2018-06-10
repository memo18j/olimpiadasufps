package entities;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the equipo database table.
 * 
 */
@Entity
@NamedQuery(name="Equipo.findAll", query="SELECT e FROM Equipo e")
public class Equipo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

	private String delegado;

	private String nombre;
	
	private String telefono;

	//bi-directional many-to-one association to Funcionario
	@OneToMany(mappedBy="equipo")
	private List<Funcionario> funcionarios;

	//bi-directional many-to-one association to Inscripcion
	@OneToMany(mappedBy="equipo")
	private List<Inscripcion> inscripcions;

	//bi-directional many-to-one association to Partidoequipo
	@OneToMany(mappedBy="equipo")
	private List<Partidoequipo> partidoequipos;

	public Equipo() {
	}
	
	public Equipo(String delegado,String nombre,String telefono){
		super();
		this.delegado = delegado;
		this.nombre = nombre;
		this.telefono=telefono;
	}
	
	public Equipo(int id, String delegado, String nombre,String telefono){
		super();
		this.delegado = delegado;
		this.id = id;
		this.nombre = nombre;
		this.telefono=telefono;
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDelegado() {
		return this.delegado;
	}

	public void setDelegado(String delegado) {
		this.delegado = delegado;
	}

	public String getNombre() {
		return this.nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	public String getTelefono() {
		return this.telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public List<Funcionario> getFuncionarios() {
		return this.funcionarios;
	}

	public void setFuncionarios(List<Funcionario> funcionarios) {
		this.funcionarios = funcionarios;
	}

	public Funcionario addFuncionario(Funcionario funcionario) {
		getFuncionarios().add(funcionario);
		funcionario.setEquipo(this);

		return funcionario;
	}

	public Funcionario removeFuncionario(Funcionario funcionario) {
		getFuncionarios().remove(funcionario);
		funcionario.setEquipo(null);

		return funcionario;
	}

	public List<Inscripcion> getInscripcions() {
		return this.inscripcions;
	}

	public void setInscripcions(List<Inscripcion> inscripcions) {
		this.inscripcions = inscripcions;
	}

	public Inscripcion addInscripcion(Inscripcion inscripcion) {
		getInscripcions().add(inscripcion);
		inscripcion.setEquipo(this);

		return inscripcion;
	}

	public Inscripcion removeInscripcion(Inscripcion inscripcion) {
		getInscripcions().remove(inscripcion);
		inscripcion.setEquipo(null);

		return inscripcion;
	}

	public List<Partidoequipo> getPartidoequipos() {
		return this.partidoequipos;
	}

	public void setPartidoequipos(List<Partidoequipo> partidoequipos) {
		this.partidoequipos = partidoequipos;
	}

	public Partidoequipo addPartidoequipo(Partidoequipo partidoequipo) {
		getPartidoequipos().add(partidoequipo);
		partidoequipo.setEquipo(this);

		return partidoequipo;
	}

	public Partidoequipo removePartidoequipo(Partidoequipo partidoequipo) {
		getPartidoequipos().remove(partidoequipo);
		partidoequipo.setEquipo(null);

		return partidoequipo;
	}

}