package proj;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;

import com.sun.xml.internal.messaging.saaj.packaging.mime.util.QEncoderStream;




public class DAOReg
{
	AnnotationConfiguration conf;
	SessionFactory factory;
	Session session;
	Transaction tx;

	
	public DAOReg() 
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
	public HibernateException Save(RegBean bean)
	{
		HibernateException exp=null;
		try{
			System.out.println("1");
		session=factory.openSession();
		System.out.println("2");
		tx=session.beginTransaction();
		System.out.println("3");
		session.save(bean);
		System.out.println("hlo im in DAO");
		tx.commit();
		System.out.println("Saved....");
		}
		catch(HibernateException ex)
		{
			exp=ex;
		}
		return exp;
		
	}
	 public HibernateException Delete(int pid)
	    {
	       HibernateException exp=null;
	       try
	       {
	       
	              session=factory.openSession();
	              tx =session.beginTransaction();
	              String qry="delete from RegBean where pid=:x";
	              Query query=session.createQuery(qry);
	              query.setInteger("x", pid);
	              int re=query.executeUpdate();
	             System.out.println(re+"Deletion");
	              tx.commit();
	       }
	       catch(HibernateException e)
	       {
	    	   e.printStackTrace();
	    	   exp=e;   
	       }
	              return exp;
	    }
	 
	 public HibernateException Update(RegBean bean)
	    {
	       HibernateException exp=null;
	       try
	       {
	       
	              session=factory.openSession();
	              tx =session.beginTransaction();
	              session.update(bean);
	              tx.commit();
	       }
	       catch(HibernateException e)
	       {
	    	   e.printStackTrace();
	    	   exp=e;   
	       }
	              return exp;
	    }
	 
	 
	  List<RegBean> searchall()
	    {
	             session=factory.openSession();
	             tx=session.beginTransaction();
	             String qr="from RegBean";
	             Query query=session.createQuery(qr);
	             List<RegBean> ls=query.list();
	             tx.commit();
	             return ls;
	    }
	  RegBean fetchdata( int id)
	    {
	             session=factory.openSession();
	             tx=session.beginTransaction();
	             String qr="from RegBean where pid=:x";
	             Query query=session.createQuery(qr);
	             query.setInteger("x", id);
	             RegBean ls=(RegBean)query.uniqueResult();
	             tx.commit();
	             return ls;
	    }

}
