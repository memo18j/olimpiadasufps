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

	//bi-directional many-to-one association to Inscripcion
	@ManyToOne
	@JoinColumn(name="idinscripcion")
	private Inscripcion inscripcion;

	//bi-directional many-to-one association to Funcionario
	@ManyToOne
	@JoinColumn(name="idfuncionario")
	private Funcionario funcionario;

	public Deportefuncionario() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Inscripcion getInscripcion() {
		return this.inscripcion;
	}

	public void setInscripcion(Inscripcion inscripcion) {
		this.inscripcion = inscripcion;
	}

	public Funcionario getFuncionario() {
		return this.funcionario;
	}

	public void setFuncionario(Funcionario funcionario) {
		this.funcionario = funcionario;
	}

}