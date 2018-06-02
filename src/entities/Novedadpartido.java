package entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the novedadpartido database table.
 * 
 */
@Entity
@NamedQuery(name="Novedadpartido.findAll", query="SELECT n FROM Novedadpartido n")
public class Novedadpartido implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

	//bi-directional many-to-one association to Novedad
	@ManyToOne
	@JoinColumn(name="idnovedad")
	private Novedad novedad;

	//bi-directional many-to-one association to Funcionario
	@ManyToOne
	@JoinColumn(name="idfuncionario")
	private Funcionario funcionario;

	//bi-directional many-to-one association to Partidoequipo
	@ManyToOne
	@JoinColumn(name="idpartido")
	private Partidoequipo partidoequipo;

	public Novedadpartido() {
	}
	
	public Novedadpartido(int id){
		super();
		this.id = id;
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Novedad getNovedad() {
		return this.novedad;
	}

	public void setNovedad(Novedad novedad) {
		this.novedad = novedad;
	}

	public Funcionario getFuncionario() {
		return this.funcionario;
	}

	public void setFuncionario(Funcionario funcionario) {
		this.funcionario = funcionario;
	}

	public Partidoequipo getPartidoequipo() {
		return this.partidoequipo;
	}

	public void setPartidoequipo(Partidoequipo partidoequipo) {
		this.partidoequipo = partidoequipo;
	}

}