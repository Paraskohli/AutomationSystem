package proj;



import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="complaintbox")
public class ComplaintBean
{
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Id
	@Column(name="cid" )
	int cid;
	@Column(name="cname" )
	String cname;
	
	@Column(name="CustID",length=30)
	String CustID;
	@Column(name="Product",length=30)
	String Product; 
	@Column(name="typ",length=30)
	String typ; 
	@Column(name="modal",length=30)
	String modal;
	@Column(name="serial",length=30)
	String serial;
	@Column(name="description",length=100)
	String description;
	@Column(name="pic",length=100)
	String pic;
	@Column(name="address",length=70)
	String address;
	@Column(name="mobile",length=30)
	String mobile;
	@Column(name="city",length=30)
	String city;
	@Column(name="currentdate")
	Date currentdate;
	@Column(name="recievedate")
	Date recievedate;
	@Column(name="eid",length=30)
	String eid;
	@Column(name="feedback",length=30)
	String feedback;
	@Column(name="charges",length=30)
	String charges;
	@Column(name="feedSperson",length=30)
	String feedSperson;
	@Column(name="warranty",length=30)
	String warranty;
	@Column(name="wproof",length=100)
	String wproof;
	
	public String getWarranty() {
		return warranty;
	}

	public void setWarranty(String warranty) {
		this.warranty = warranty;
	}

	public ComplaintBean(String custID,String cname, String product, String typ, String modal, String serial,
			String description, String pic, String address, String mobile, String city, Date currentdate,
			 String eid,String wproof,String warranty,String feedSperson) {
		super();
		
		this.CustID = custID;
		this.cname=cname;
		this.Product = product;
		this.typ = typ;
		this.modal = modal;
		this.serial = serial;
		this.description = description;
		this.pic = pic;
		this.address = address;
		this.mobile = mobile;
		this.city = city;
		this.currentdate = currentdate;
		this.recievedate = recievedate;
		this.eid = eid;
		this.feedback = feedback;
		this.charges = charges;
		this.wproof = wproof;
		this.warranty=warranty;
		this.feedSperson=feedSperson;
	}
	
	public String getWproof() {
		return wproof;
	}

	public void setWproof(String wproof) {
		this.wproof = wproof;
	}

	public String getFeedSperson() {
		return feedSperson;
	}

	public void setFeedSperson(String feedSperson) {
		this.feedSperson = feedSperson;
	}

	
	
	public ComplaintBean() {
		super();
	}

	

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getCustID() {
		return CustID;
	}
	public void setCustID(String custID) {
		CustID = custID;
	}
	public String getProduct() {
		return Product;
	}
	public void setProduct(String product) {
		Product = product;
	}
	public String getTyp() {
		return typ;
	}
	public void setTyp(String typ) {
		this.typ = typ;
	}
	public String getModal() {
		return modal;
	}
	public void setModal(String modal) {
		this.modal = modal;
	}
	public String getSerial() {
		return serial;
	}
	public void setSerial(String serial) {
		this.serial = serial;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public Date getCurrentdate() {
		return currentdate;
	}
	public void setCurrentdate(Date currentdate) {
		this.currentdate = currentdate;
	}
	public Date getRecievedate() {
		return recievedate;
	}
	public void setRecievedate(Date recievedate) {
		this.recievedate = recievedate;
	}
	public String getEid() {
		return eid;
	}
	public void setEid(String eid) {
		this.eid = eid;
	}
	public String getFeedback() {
		return feedback;
	}
	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}
	public String getCharges() {
		return charges;
	}
	public void setCharges(String charges) {
		this.charges = charges;
	}
}
