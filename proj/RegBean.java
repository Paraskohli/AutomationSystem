package proj;

import javax.annotation.Generated;
import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

@Entity
@Table(name="productmanager")
public class RegBean {
	
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Id
	@Column(name="pid" )
	int pid;
	
	@Column(name="product",length=30)
	String product;
	
	@Column(name="ptype",length=30)
	String ptype;
	
	@Column(name="modal",length=20)
	String modal;

	public String getProduct() {
		return product;
	}

	public void setProduct(String product) {
		this.product = product;
	}
	
	public String getptype() {
		return ptype;
	}

	public void setptype(String ptype) {
		this.ptype = ptype;
	}

	public String getModal() {
		return modal;
	}

	public void setModal(String modal) {
		this.modal = modal;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public RegBean(String product,String ptype ,String modal) {
		
		this.product = product;
		this.ptype = ptype;
		this.modal = modal;
	}
public RegBean(int id,String product,String ptype, String modal) {
		this.pid=id;
		this.product = product;
		this.ptype = ptype;
		this.modal = modal;
	}
public RegBean() {
		
		
	}
	
}
