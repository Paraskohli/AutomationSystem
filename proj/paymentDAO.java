package proj;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;

public class paymentDAO {
	AnnotationConfiguration conf;
	SessionFactory factory;
	Session session;
	Transaction tx;

	
	public paymentDAO()
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
	
	List<ComplaintBean> getdataV()
    {
             session=factory.openSession();
             tx=session.beginTransaction();
             String qr="from ComplaintBean";
             Query query=session.createQuery(qr);
             List<ComplaintBean> ls=query.list();
             tx.commit();
             return ls;
    }
}
