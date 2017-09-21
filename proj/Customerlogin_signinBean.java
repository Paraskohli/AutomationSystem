package proj;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="custsignin")
public class Customerlogin_signinBean {
@Id
@Column(name="cusid",length=20)
private String cusid;
@Column(name="gmail",length=35)
private String gmail;
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
	

	

	public Customerlogin_signinBean(String firstn, String secondn, String gmail, String cusid, String passw,
			String repassw,String custpic) {
		super();
		this.firstn = firstn;
		this.secondn = secondn;
		this.gmail = gmail;
		this.cusid = cusid;
		this.passw = passw;
		this.repassw = repassw;
		this.custpic=custpic;
	}
	public String getCustpic() {
		return custpic;
	}

	public void setCustpic(String custpic) {
		this.custpic = custpic;
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

	public String getGmail() {
		return gmail;
	}

	public void setGmail(String gmail) {
		this.gmail = gmail;
	}

	public String getCusid() {
		return cusid;
	}

	public void setCusid(String cusid) {
		this.cusid = cusid;
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
	public Customerlogin_signinBean() {
		// TODO Auto-generated constructor stub
	}

}
