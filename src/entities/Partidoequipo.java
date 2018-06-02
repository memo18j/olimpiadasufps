package entities;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the partidoequipo database table.
 * 
 */
@Entity
@NamedQuery(name="Partidoequipo.findAll", query="SELECT p FROM Partidoequipo p")
public class Partidoequipo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

	//bi-directional many-to-one association to Novedadpartido
	@OneToMany(mappedBy="partidoequipo")
	private List<Novedadpartido> novedadpartidos;

	//bi-directional many-to-one association to Partido
	@ManyToOne
	@JoinColumn(name="idpartido")
	private Partido partido;

	//bi-directional many-to-one association to Equipo
	@ManyToOne
	@JoinColumn(name="idequipo")
	private Equipo equipo;

	public Partidoequipo() {
	}
	
	public Partidoequipo(int id){
		super();
		this.id = id;
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public List<Novedadpartido> getNovedadpartidos() {
		return this.novedadpartidos;
	}

	public void setNovedadpartidos(List<Novedadpartido> novedadpartidos) {
		this.novedadpartidos = novedadpartidos;
	}

	public Novedadpartido addNovedadpartido(Novedadpartido novedadpartido) {
		getNovedadpartidos().add(novedadpartido);
		novedadpartido.setPartidoequipo(this);

		return novedadpartido;
	}

	public Novedadpartido removeNovedadpartido(Novedadpartido novedadpartido) {
		getNovedadpartidos().remove(novedadpartido);
		novedadpartido.setPartidoequipo(null);

		return novedadpartido;
	}

	public Partido getPartido() {
		return this.partido;
	}

	public void setPartido(Partido partido) {
		this.partido = partido;
	}

	public Equipo getEquipo() {
		return this.equipo;
	}

	public void setEquipo(Equipo equipo) {
		this.equipo = equipo;
	}

}