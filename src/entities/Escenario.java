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

	//bi-directional many-to-one association to Partido
	@OneToMany(mappedBy="escenario")
	private List<Partido> partidos;

	public Escenario() {
	}
	
	public Escenario(int id, String nombre){
		super();
		this.id = id;
		this.nombre = nombre;
	}
	
	public Escenario( String nombre){
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

	public List<Partido> getPartidos() {
		return this.partidos;
	}

	public void setPartidos(List<Partido> partidos) {
		this.partidos = partidos;
	}

	public Partido addPartido(Partido partido) {
		getPartidos().add(partido);
		partido.setEscenario(this);

		return partido;
	}

	public Partido removePartido(Partido partido) {
		getPartidos().remove(partido);
		partido.setEscenario(null);

		return partido;
	}

}