package entities;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the deporte database table.
 * 
 */
@Entity
@NamedQuery(name="Deporte.findAll", query="SELECT d FROM Deporte d")
public class Deporte implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

	private String nombre;

	//bi-directional many-to-one association to Deportefuncionario
	@OneToMany(mappedBy="deporte")
	private List<Deportefuncionario> deportefuncionarios;

	//bi-directional many-to-one association to Inscripcion
	@OneToMany(mappedBy="deporte")
	private List<Inscripcion> inscripcions;

	public Deporte() {
	}
    
	public Deporte(String nombre){
		super();
		
		this.nombre = nombre;
	}
	
	public Deporte(int id,String nombre){
		super();
		this.id = id;
		this.nombre = nombre;
	}
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombre() {
		return this.nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public List<Deportefuncionario> getDeportefuncionarios() {
		return this.deportefuncionarios;
	}

	public void setDeportefuncionarios(List<Deportefuncionario> deportefuncionarios) {
		this.deportefuncionarios = deportefuncionarios;
	}

	public Deportefuncionario addDeportefuncionario(Deportefuncionario deportefuncionario) {
		getDeportefuncionarios().add(deportefuncionario);
		deportefuncionario.setDeporte(this);

		return deportefuncionario;
	}

	public Deportefuncionario removeDeportefuncionario(Deportefuncionario deportefuncionario) {
		getDeportefuncionarios().remove(deportefuncionario);
		deportefuncionario.setDeporte(null);

		return deportefuncionario;
	}

	public List<Inscripcion> getInscripcions() {
		return this.inscripcions;
	}

	public void setInscripcions(List<Inscripcion> inscripcions) {
		this.inscripcions = inscripcions;
	}

	public Inscripcion addInscripcion(Inscripcion inscripcion) {
		getInscripcions().add(inscripcion);
		inscripcion.setDeporte(this);

		return inscripcion;
	}

	public Inscripcion removeInscripcion(Inscripcion inscripcion) {
		getInscripcions().remove(inscripcion);
		inscripcion.setDeporte(null);

		return inscripcion;
	}

}