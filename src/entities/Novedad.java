package entities;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the novedad database table.
 * 
 */
@Entity
@NamedQuery(name="Novedad.findAll", query="SELECT n FROM Novedad n")
public class Novedad implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

	private int amarilla;

	private int punto;

	private int roja;

	//bi-directional many-to-one association to Novedadpartido
	@OneToMany(mappedBy="novedad")
	private List<Novedadpartido> novedadpartidos;

	public Novedad() {
	}
	

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getAmarilla() {
		return this.amarilla;
	}

	public void setAmarilla(int amarilla) {
		this.amarilla = amarilla;
	}

	public int getPunto() {
		return this.punto;
	}

	public void setPunto(int punto) {
		this.punto = punto;
	}

	public int getRoja() {
		return this.roja;
	}

	public void setRoja(int roja) {
		this.roja = roja;
	}

	public List<Novedadpartido> getNovedadpartidos() {
		return this.novedadpartidos;
	}

	public void setNovedadpartidos(List<Novedadpartido> novedadpartidos) {
		this.novedadpartidos = novedadpartidos;
	}

	public Novedadpartido addNovedadpartido(Novedadpartido novedadpartido) {
		getNovedadpartidos().add(novedadpartido);
		novedadpartido.setNovedad(this);

		return novedadpartido;
	}

	public Novedadpartido removeNovedadpartido(Novedadpartido novedadpartido) {
		getNovedadpartidos().remove(novedadpartido);
		novedadpartido.setNovedad(null);

		return novedadpartido;
	}

}