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

	//bi-directional many-to-one association to Deportefuncionario
	@OneToMany(mappedBy="equipo")
	private List<Deportefuncionario> deportefuncionarios;

	//bi-directional many-to-one association to Funcionario
	@OneToMany(mappedBy="equipo")
	private List<Funcionario> funcionarios;

	//bi-directional many-to-one association to Inscripcion
	@OneToMany(mappedBy="equipo")
	private List<Inscripcion> inscripcions;

	//bi-directional many-to-one association to Partidoequipo
	@OneToMany(mappedBy="equipo1")
	private List<Partidoequipo> partidoequipos1;

	//bi-directional many-to-one association to Partidoequipo
	@OneToMany(mappedBy="equipo2")
	private List<Partidoequipo> partidoequipos2;

	public Equipo() {
	}
    

    public Equipo(int id, String delegado, String nombre,String telefono) {
		super();
		this.id = id;
		this.delegado = delegado;
		this.nombre = nombre;
		this.telefono = telefono;
	}
	
	public Equipo( String delegado, String nombre,String telefono) {
		super();
		this.delegado = delegado;
		this.nombre = nombre;
		this.telefono = telefono;
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

	public List<Deportefuncionario> getDeportefuncionarios() {
		return this.deportefuncionarios;
	}

	public void setDeportefuncionarios(List<Deportefuncionario> deportefuncionarios) {
		this.deportefuncionarios = deportefuncionarios;
	}

	public Deportefuncionario addDeportefuncionario(Deportefuncionario deportefuncionario) {
		getDeportefuncionarios().add(deportefuncionario);
		deportefuncionario.setEquipo(this);

		return deportefuncionario;
	}

	public Deportefuncionario removeDeportefuncionario(Deportefuncionario deportefuncionario) {
		getDeportefuncionarios().remove(deportefuncionario);
		deportefuncionario.setEquipo(null);

		return deportefuncionario;
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

	public List<Partidoequipo> getPartidoequipos1() {
		return this.partidoequipos1;
	}

	public void setPartidoequipos1(List<Partidoequipo> partidoequipos1) {
		this.partidoequipos1 = partidoequipos1;
	}

	public Partidoequipo addPartidoequipos1(Partidoequipo partidoequipos1) {
		getPartidoequipos1().add(partidoequipos1);
		partidoequipos1.setEquipo1(this);

		return partidoequipos1;
	}

	public Partidoequipo removePartidoequipos1(Partidoequipo partidoequipos1) {
		getPartidoequipos1().remove(partidoequipos1);
		partidoequipos1.setEquipo1(null);

		return partidoequipos1;
	}

	public List<Partidoequipo> getPartidoequipos2() {
		return this.partidoequipos2;
	}

	public void setPartidoequipos2(List<Partidoequipo> partidoequipos2) {
		this.partidoequipos2 = partidoequipos2;
	}

	public Partidoequipo addPartidoequipos2(Partidoequipo partidoequipos2) {
		getPartidoequipos2().add(partidoequipos2);
		partidoequipos2.setEquipo2(this);

		return partidoequipos2;
	}

	public Partidoequipo removePartidoequipos2(Partidoequipo partidoequipos2) {
		getPartidoequipos2().remove(partidoequipos2);
		partidoequipos2.setEquipo2(null);

		return partidoequipos2;
	}

}