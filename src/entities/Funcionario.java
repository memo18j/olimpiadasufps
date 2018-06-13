package entities;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the funcionario database table.
 * 
 */
@Entity
@NamedQuery(name="Funcionario.findAll", query="SELECT f FROM Funcionario f")
public class Funcionario implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

	private String nombre;

	//bi-directional many-to-one association to Deportefuncionario
	@OneToMany(mappedBy="funcionario")
	private List<Deportefuncionario> deportefuncionarios;

	//bi-directional many-to-one association to Equipo
	@ManyToOne
	@JoinColumn(name="idequipo")
	private Equipo equipo;

	public Funcionario() {
	}
	public Funcionario(String nombre) {
		super();
		this.nombre = nombre;
	}
	
	public Funcionario(int id,String nombre) {
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
		deportefuncionario.setFuncionario(this);

		return deportefuncionario;
	}

	public Deportefuncionario removeDeportefuncionario(Deportefuncionario deportefuncionario) {
		getDeportefuncionarios().remove(deportefuncionario);
		deportefuncionario.setFuncionario(null);

		return deportefuncionario;
	}

	public Equipo getEquipo() {
		return this.equipo;
	}

	public void setEquipo(Equipo equipo) {
		this.equipo = equipo;
	}

}