package proj;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="selectedperson")
public class SelectedPersonBean {
	  @GeneratedValue(strategy=GenerationType.AUTO)
	  @Id
	  @Column(name="serialno")
	  int serialno;	  
	  @Column(name="sid")
	  int sid;
	  @Column(name="eid",length=20)
	  String eid;
	  @Column(name="Namee",length=20)
	  String Namee;
	  @Column(name="email",length=30)
	  String email;
	  @Column(name="mob",length=35)
	  String mob;
	  @Column(name="special1",length=35)
	  String special1;
	  @Column(name="special2",length=35)
	  String special2;
	  @Column(name="special3",length=35)
	  String special3;
	  @Column(name="avail")
	  int avail;
	  @Column(name="serpass",length=35)
	  String serpass;
	public int getSid() {
		return sid;
	}
	public SelectedPersonBean(int sid, String eid, String namee, String email, String mob, String special1,String special2,String special3, int avail,String serpass) {
		super();
		System.out.println("bean class sid $$$$$$$$$$$$$$  "+sid);
		this.sid = sid;
		this.eid = eid;
		Namee = namee;
		this.email = email;
		this.mob = mob;
		this.special1 = special1;
		this.special2 = special2;
		this.special3 = special3;
		this.avail = avail;
		this.serpass=serpass;
	}
	public SelectedPersonBean() {
	
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getEid() {
		return eid;
	}
	public void setEid(String eid) {
		this.eid = eid;
	}
	public String getNamee() {
		return Namee;
	}
	public String getSerpass() {
		return serpass;
	}
	public void setSerpass(String serpass) {
		this.serpass = serpass;
	}
	public void setNamee(String namee) {
		Namee = namee;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMob() {
		return mob;
	}
	public int getSerialno() {
		return serialno;
	}
	public void setSerialno(int serialno) {
		this.serialno = serialno;
	}
	public String getSpecial2() {
		return special2;
	}
	public void setSpecial2(String special2) {
		this.special2 = special2;
	}
	public String getSpecial3() {
		return special3;
	}
	public void setSpecial3(String special3) {
		this.special3 = special3;
	}
	public void setMob(String mob) {
		this.mob = mob;
	}
	public String getSpecial1() {
		return special1;
	}
	public void setSpecial1(String special1) {
		this.special1 = special1;
	}
	public int getAvail() {
		return avail;
	}
	public void setAvail(int avail) {
		this.avail = avail;
	}

}
