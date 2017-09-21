package proj;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="adminprofiledetail")
public class adminprofilebean {
	@Id
	@Column(name="adminid",length=20)
	private String cusid;
	@Column(name="gmail",length=35)
	private String gmail;
	@Column(name="mobno",length=35)
	private String mobno;
	@Column(name="firstn",length=20)
	private String firstn;
	@Column(name="secondn",length=20)
	private String secondn;
	@Column(name="passw",length=20)
	private String passw;
	@Column(name="repassw",length=20)
	private String repassw;
	@Column(name="custpic",length=55)
	private String custpic;
	public adminprofilebean(String cusid, String gmail, String mobno, String firstn, String secondn, String passw,
			String repassw, String custpic) {
		super();
		this.cusid = cusid;
		this.gmail = gmail;
		this.mobno = mobno;
		this.firstn = firstn;
		this.secondn = secondn;
		this.passw = passw;
		this.repassw = repassw;
		this.custpic = custpic;
	}
public adminprofilebean() {
	// TODO Auto-generated constructor stub
}
public String getCusid() {
	return cusid;
}
public void setCusid(String cusid) {
	this.cusid = cusid;
}
public String getGmail() {
	return gmail;
}
public void setGmail(String gmail) {
	this.gmail = gmail;
}
public String getMobno() {
	return mobno;
}
public void setMobno(String mobno) {
	this.mobno = mobno;
}
public String getFirstn() {
	return firstn;
}
public void setFirstn(String firstn) {
	this.firstn = firstn;
}
public String getSecondn() {
	return secondn;
}
public void setSecondn(String secondn) {
	this.secondn = secondn;
}
public String getPassw() {
	return passw;
}
public void setPassw(String passw) {
	this.passw = passw;
}
public String getRepassw() {
	return repassw;
}
public void setRepassw(String repassw) {
	this.repassw = repassw;
}
public String getCustpic() {
	return custpic;
}
public void setCustpic(String custpic) {
	this.custpic = custpic;
}

}
