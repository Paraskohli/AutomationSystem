package proj;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;

public class CustfetchdataDAO {
	AnnotationConfiguration conf;
	SessionFactory factory;
	Session session;
	Transaction tx;

	
	public  CustfetchdataDAO() 
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
	Customerlogin_signinBean getdata(String custid)
    {
             session=factory.openSession();
             tx=session.beginTransaction();
             String qr="from Customerlogin_signinBean where cusid=:x";
             Query query=session.createQuery(qr);
             query.setString("x", custid);
             Customerlogin_signinBean ls=(Customerlogin_signinBean)query.uniqueResult();
             tx.commit();
             return ls;
    }

}
