package proj;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="jobAppl")
public class Beanjob {
	
	 
	  @Column(name="sid")
	  int sid;
	  @Id
	  @Column(name="eid",length=20)
	  String eid;
	  @Column(name="Namee",length=20)
	  String Namee;
	  @Column(name="age")
	  int age;
	  @Column(name="pic",length=90)
	  String pic;
	  @Column(name="email",length=30)
	  String email;
	  @Column(name="mob",length=35)
	  String mob;
	  @Column(name="addr",length=40)
	  String addr;
	  @Column(name="city",length=20)
	  String city;
	  @Column(name="state",length=15)
	  String state;
	  @Column(name="tknow",length=35)
	  String tknow;
	  @Column(name="expi",length=35)
	  String expi;
	  @Column(name="special1",length=35)
	  String special1;
	  @Column(name="special2",length=35)
	  String special2;
	  @Column(name="special3",length=35)
	  String special3;
	  @Column(name="idproof",length=30)
	  String idproof;
	  @Column(name="idbrowse",length=100)
	  String idbrowse;
	public int getSid() {
		return sid;
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
	public String getName() {
		return Namee;
	}
	public void setName(String name) {
		Namee = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
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
	public void setMob(String mob) {
		this.mob = mob;
	}
	public String getAdd() {
		return addr;
	}
	public void setAdd(String addr) {
		this.addr = addr;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getTknow() {
		return tknow;
	}
	public void setTknow(String tknow) {
		this.tknow = tknow;
	}
	public String getExp() {
		return expi;
	}
	public void setExp(String exp) {
		this.expi = exp;
	}
	public String getSpecial1() {
		return special1;
	}
	public void setSpecial1(String special1) {
		this.special1 = special1;
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
	public String getIdproof() {
		return idproof;
	}
	public void setIdproof(String idproof) {
		this.idproof = idproof;
	}
	public String getIdbrowse() {
		return idbrowse;
	}
	public void setIdbrowse(String idbrowse) {
		this.idbrowse = idbrowse;
	}
	public Beanjob(int sid, String eid, String name, int age, String pic, String email, String mob, String add,
			String city, String state, String tknow, String exp, String special1, String special2,String special3, String idproof,
			String idbrowse) {
		super();
		this.sid = sid;
		this.eid = eid;
		Namee = name;
		this.age = age;
		this.pic = pic;
		this.email = email;
		this.mob = mob;
		this.addr = add;
		this.city = city;
		this.state = state;
		this.tknow = tknow;
		this.expi = exp;
		this.special1 = special1;
		this.special2 = special2;
		this.special3 = special3;
		this.idproof = idproof;
		this.idbrowse = idbrowse;
	}
	
	public Beanjob()
	{
		
	}
}
