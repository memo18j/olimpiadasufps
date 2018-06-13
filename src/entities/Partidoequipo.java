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

	@Temporal(TemporalType.DATE)
	private Date fecha;

	private int idequipob;

	private int marcadorA;

	private int marcadorB;

	//bi-directional many-to-one association to Equipo
	@ManyToOne
	@JoinColumn(name="idequipo")
	private Equipo equipo;

	//bi-directional many-to-one association to Escenario
	@ManyToOne
	@JoinColumn(name="escenario")
	private Escenario escenarioBean;

	public Partidoequipo() {
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

	public Date getFecha() {
		return this.fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	public int getIdequipob() {
		return this.idequipob;
	}

	public void setIdequipob(int idequipob) {
		this.idequipob = idequipob;
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

	public Equipo getEquipo() {
		return this.equipo;
	}

	public void setEquipo(Equipo equipo) {
		this.equipo = equipo;
	}

	public Escenario getEscenarioBean() {
		return this.escenarioBean;
	}

	public void setEscenarioBean(Escenario escenarioBean) {
		this.escenarioBean = escenarioBean;
	}

}