package entities;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the escenario database table.
 * 
 */
@Entity
@NamedQuery(name="Escenario.findAll", query="SELECT e FROM Escenario e")
public class Escenario implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

	private String nombre;

	//bi-directional many-to-one association to Partidoequipo
	@OneToMany(mappedBy="escenarioBean")
	private List<Partidoequipo> partidoequipos;

	public Escenario() {
	}
	
	public Escenario(int id, String nombre) {
		super();
		this.id = id;
		this.nombre = nombre;
	}
	
	public Escenario( String nombre) {
		super();
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

	public List<Partidoequipo> getPartidoequipos() {
		return this.partidoequipos;
	}

	public void setPartidoequipos(List<Partidoequipo> partidoequipos) {
		this.partidoequipos = partidoequipos;
	}

	public Partidoequipo addPartidoequipo(Partidoequipo partidoequipo) {
		getPartidoequipos().add(partidoequipo);
		partidoequipo.setEscenarioBean(this);

		return partidoequipo;
	}

	public Partidoequipo removePartidoequipo(Partidoequipo partidoequipo) {
		getPartidoequipos().remove(partidoequipo);
		partidoequipo.setEscenarioBean(null);

		return partidoequipo;
	}

}