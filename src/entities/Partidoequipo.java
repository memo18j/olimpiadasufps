package entities;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


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

	@Lob
	private String descripcion;

	private String fase;

	@Temporal(TemporalType.DATE)
	private Date fecha;

	private int marcadorA;

	private int marcadorB;

	//bi-directional many-to-one association to Equipo
	@ManyToOne
	@JoinColumn(name="idequipo")
	private Equipo equipo1;

	//bi-directional many-to-one association to Escenario
	@ManyToOne
	@JoinColumn(name="escenario")
	private Escenario escenarioBean;

	//bi-directional many-to-one association to Equipo
	@ManyToOne
	@JoinColumn(name="idequipob")
	private Equipo equipo2;

	public Partidoequipo() {
	}
	
	public Partidoequipo(int id,String descripcion, String fase, Date fecha, int marcadora, int marcadorb) {
		super();
		this.id = id;
		this.descripcion = descripcion;
		this.fase = fase;
		this.fecha = fecha;
		this.marcadorA = marcadora;
		this.marcadorB = marcadorb;
	}
	
	
	public Partidoequipo(String descripcion, String fase, Date fecha) {
		super();
		this.descripcion = descripcion;
		this.fase = fase;
		this.fecha = fecha;
	}
	

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDescripcion() {
		return this.descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public String getFase() {
		return this.fase;
	}

	public void setFase(String fase) {
		this.fase = fase;
	}

	public Date getFecha() {
		return this.fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	public int getMarcadorA() {
		return this.marcadorA;
	}

	public void setMarcadorA(int marcadorA) {
		this.marcadorA = marcadorA;
	}

	public int getMarcadorB() {
		return this.marcadorB;
	}

	public void setMarcadorB(int marcadorB) {
		this.marcadorB = marcadorB;
	}

	public Equipo getEquipo1() {
		return this.equipo1;
	}

	public void setEquipo1(Equipo equipo1) {
		this.equipo1 = equipo1;
	}

	public Escenario getEscenarioBean() {
		return this.escenarioBean;
	}

	public void setEscenarioBean(Escenario escenarioBean) {
		this.escenarioBean = escenarioBean;
	}

	public Equipo getEquipo2() {
		return this.equipo2;
	}

	public void setEquipo2(Equipo equipo2) {
		this.equipo2 = equipo2;
	}

}