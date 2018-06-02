package entities;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the inscripcion database table.
 * 
 */
@Entity
@NamedQuery(name="Inscripcion.findAll", query="SELECT i FROM Inscripcion i")
public class Inscripcion implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

	private String grupo;

	//bi-directional many-to-one association to Deportefuncionario
	@OneToMany(mappedBy="inscripcion")
	private List<Deportefuncionario> deportefuncionarios;

	//bi-directional many-to-one association to Deporte
	@ManyToOne
	@JoinColumn(name="iddeporte")
	private Deporte deporte;

	//bi-directional many-to-one association to Equipo
	@ManyToOne
	@JoinColumn(name="idequipo")
	private Equipo equipo;

	public Inscripcion() {
	}
	
	public Inscripcion(int id, String grupo){
		super();
		this.id = id;
		this.grupo = grupo;
	}
	
	public Inscripcion(String grupo){
		super();
		this.grupo = grupo;
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getGrupo() {
		return this.grupo;
	}

	public void setGrupo(String grupo) {
		this.grupo = grupo;
	}

	public List<Deportefuncionario> getDeportefuncionarios() {
		return this.deportefuncionarios;
	}

	public void setDeportefuncionarios(List<Deportefuncionario> deportefuncionarios) {
		this.deportefuncionarios = deportefuncionarios;
	}

	public Deportefuncionario addDeportefuncionario(Deportefuncionario deportefuncionario) {
		getDeportefuncionarios().add(deportefuncionario);
		deportefuncionario.setInscripcion(this);

		return deportefuncionario;
	}

	public Deportefuncionario removeDeportefuncionario(Deportefuncionario deportefuncionario) {
		getDeportefuncionarios().remove(deportefuncionario);
		deportefuncionario.setInscripcion(null);

		return deportefuncionario;
	}

	public Deporte getDeporte() {
		return this.deporte;
	}

	public void setDeporte(Deporte deporte) {
		this.deporte = deporte;
	}

	public Equipo getEquipo() {
		return this.equipo;
	}

	public void setEquipo(Equipo equipo) {
		this.equipo = equipo;
	}

}