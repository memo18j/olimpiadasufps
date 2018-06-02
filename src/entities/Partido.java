package entities;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;
import java.util.List;


/**
 * The persistent class for the partido database table.
 * 
 */
@Entity
@NamedQuery(name="Partido.findAll", query="SELECT p FROM Partido p")
public class Partido implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

	@Temporal(TemporalType.DATE)
	private Date fecha;

	//bi-directional many-to-one association to Escenario
	@ManyToOne
	@JoinColumn(name="idescenario")
	private Escenario escenario;

	//bi-directional many-to-one association to Partidoequipo
	@OneToMany(mappedBy="partido")
	private List<Partidoequipo> partidoequipos;

	public Partido() {
	}
	
	public Partido(int id, Date fecha) {
		super();
		this.id = id;
		this.fecha = fecha;
	}
	
	public Partido(Date fecha) {
		super();
		this.fecha = fecha;
	}
	

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getFecha() {
		return this.fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	public Escenario getEscenario() {
		return this.escenario;
	}

	public void setEscenario(Escenario escenario) {
		this.escenario = escenario;
	}

	public List<Partidoequipo> getPartidoequipos() {
		return this.partidoequipos;
	}

	public void setPartidoequipos(List<Partidoequipo> partidoequipos) {
		this.partidoequipos = partidoequipos;
	}

	public Partidoequipo addPartidoequipo(Partidoequipo partidoequipo) {
		getPartidoequipos().add(partidoequipo);
		partidoequipo.setPartido(this);

		return partidoequipo;
	}

	public Partidoequipo removePartidoequipo(Partidoequipo partidoequipo) {
		getPartidoequipos().remove(partidoequipo);
		partidoequipo.setPartido(null);

		return partidoequipo;
	}

}