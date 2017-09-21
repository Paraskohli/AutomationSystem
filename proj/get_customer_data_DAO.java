package proj;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;

public class get_customer_data_DAO {
	AnnotationConfiguration conf;
	SessionFactory factory;
	Session session;
	Transaction tx;

	
	public get_customer_data_DAO()
	{
		try
		{
	    System.out.println(" ***************************** ");
		conf=new AnnotationConfiguration();
		conf.configure("hibernate.cfg.xml");
		factory= conf.buildSessionFactory();
		}
		catch (HibernateException h) {
			h.printStackTrace();
		}
	}
	
	List<ComplaintBean> getdataV(String cusid)
    {
             session=factory.openSession();
             tx=session.beginTransaction();
             String qr="from ComplaintBean where CustID=:x";
             Query query=session.createQuery(qr);
             query.setString("x", cusid);
             List<ComplaintBean> ls=query.list();
             tx.commit();
             return ls;
    }

}
