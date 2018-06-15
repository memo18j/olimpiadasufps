package entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the deportefuncionario database table.
 * 
 */
@Entity
@NamedQuery(name="Deportefuncionario.findAll", query="SELECT d FROM Deportefuncionario d")
public class Deportefuncionario implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

	//bi-directional many-to-one association to Funcionario
	@ManyToOne
	@JoinColumn(name="idfuncionario")
	private Funcionario funcionario;

	//bi-directional many-to-one association to Deporte
	@ManyToOne
	@JoinColumn(name="iddeporte")
	private Deporte deporte;

	//bi-directional many-to-one association to Equipo
	@ManyToOne
	@JoinColumn(name="iddelegacion")
	private Equipo equipo;

	public Deportefuncionario() {
	}
	public Deportefuncionario(int id) {
		super();
		this.id = id;
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Funcionario getFuncionario() {
		return this.funcionario;
	}

	public void setFuncionario(Funcionario funcionario) {
		this.funcionario = funcionario;
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