package proj;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;

public class adminprofiledao {
	AnnotationConfiguration conf;
	SessionFactory factory;
	Session session;
	Transaction tx;
	public adminprofiledao()
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
	
HibernateException saveadmindetail(adminprofilebean bean){
		
		HibernateException exp=null;
		try 
		{	
			session=factory.openSession();
			tx=session.beginTransaction();
			session.save(bean);
			System.out.println("hlo im in DAO");
			tx.commit();
			System.out.println("Saved....");	
		} 
		catch (HibernateException e) {
			exp=e;
			e.printStackTrace();
		}
		return exp;
	}

HibernateException updateadmindetail(String adminid,String gmail,String mobno,String passw,String repassw)
{
	HibernateException exp=null;
	try{
	  session=factory.openSession();
      tx=session.beginTransaction();
      String qry="update adminprofilebean set gmail=:x,mobno=:y,passw=:z,repassw=:p where adminid=:a";
      Query query=session.createQuery(qry);
      query.setString("x", gmail);
      query.setString("y", mobno);
      query.setString("z", passw);
      query.setString("p", repassw);
      query.setString("a", adminid);
      int re=query.executeUpdate();
     
      System.out.println(re);
      tx.commit();
	}
	catch(HibernateException e)
	{
		exp=e;
		e.printStackTrace();
	}
	return exp;
}
HibernateException updateadminpic(String pic,String adminid)
{
	HibernateException exp=null;
	try{
	  session=factory.openSession();
      tx=session.beginTransaction();
      String qry="update adminprofilebean set custpic=:x where adminid=:a";
      Query query=session.createQuery(qry);
      query.setString("x", pic);
      query.setString("a", adminid);
      int re=query.executeUpdate();
      System.out.println(re);
      tx.commit();
	}
	catch(HibernateException e)
	{
		exp=e;
		e.printStackTrace();
	}
	return exp;
}
adminprofilebean fetchprofile(String adminid)
{
	adminprofilebean ls=null;
	
	try{
         session=factory.openSession();
         tx=session.beginTransaction();
         String qr="from adminprofilebean where adminid=:x";
         Query query=session.createQuery(qr);
         query.setString("x", adminid);
         ls=(adminprofilebean)query.uniqueResult();
         tx.commit();
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	 return ls;
}		
	
}
