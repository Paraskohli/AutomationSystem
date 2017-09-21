package proj;



import java.sql.Date;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;

public class AvailsystemDAO 
{
	AnnotationConfiguration conf;
	SessionFactory factory;
	Session session;
	Transaction tx;
	public AvailsystemDAO()
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
	
	public HibernateException updateComplainBean(int cid,Date date,String feed,String charg,String warr)
	{
		HibernateException exp=null;
		try
		{
			 System.out.println( warr);
			  session=factory.openSession();
              tx=session.beginTransaction();
              System.out.println("1");
              String qry="update ComplaintBean set recievedate=:a,feedSperson=:b,warranty=:c,charges=:d where cid=:x";
              System.out.println("2");
              Query query = session.createQuery(qry);
              System.out.println("3");
              query.setDate("a", date);
              System.out.println("4");
			  query.setString("b", feed);
			  System.out.println("5");
			  query.setString("c", warr);
			  System.out.println("6");
			  query.setString("d", charg);
			  System.out.println("7");
			  query.setInteger("x", cid);
			  System.out.println("8");
			  int r = query.executeUpdate();
			  System.out.println("9");
			  tx.commit();
		}
		catch(HibernateException e)
		{
			exp=e;
		}
		return exp;
	}
	public HibernateException availapply(String eid)
	{
		HibernateException exp=null;
		try
		{System.out.println(eid);
			 session=factory.openSession();
             tx=session.beginTransaction();
             
             String qry="update SelectedPersonBean set avail=:a where eid=:x";
             
             Query query = session.createQuery(qry);
            
			  query.setInteger("a", 0);
			  query.setString("x",eid);
			
			  int r = query.executeUpdate();
			 System.out.println("chl gya");
			  tx.commit();
		}
		catch(HibernateException e)
		{
			exp=e;
		}
		return exp;
	}
	public HibernateException AutomationSystemApply(String eid)
	{
		String qry;Query query;
		HibernateException exp=null;
		try
		{
			   session=factory.openSession();
	           tx=session.beginTransaction();
	           qry="from SelectedPersonBean where eid=:x";
	           query=session.createQuery(qry);
	           query.setString("x", eid);
	           SelectedPersonBean obj=(SelectedPersonBean)query.uniqueResult();
	           tx.commit();
	           System.out.println(obj);
	           String specilization1=obj.getSpecial1();
	           System.out.println(specilization1);
	           String specilization2=obj.getSpecial2();
	           System.out.println(specilization2);
	           String specilization3=obj.getSpecial3();
	           System.out.println(specilization3);
	           
	           
	           session=factory.openSession();
	           tx=session.beginTransaction();
	           qry="select min(cid) from ComplaintBean where eid=:x and (typ=:a or typ=:b or typ=:c)";
	           query=session.createQuery(qry);
	          
	           query.setString("x", "wait");
	           query.setString("a", specilization1);
	           query.setString("b", specilization2);
	           query.setString("c", specilization3);
	           List<Integer> ls=query.list();
	           tx.commit();
	          
	           
	           if(ls.get(0)!=null)
	           {
	            int cid= ls.get(0);
	    	    System.out.println( cid);
               
	    	    session=factory.openSession();
	            tx=session.beginTransaction();
	            qry="update ComplaintBean set eid=:a where cid=:x";
	            query = session.createQuery(qry);
	            query.setString("a", eid);
				query.setInteger("x",cid);
				
				 int r = query.executeUpdate();
				 System.out.println("chl gya");
				  tx.commit();
	           }
	           else
	           {
	        	   System.out.println("not data in waiting!!!");
	           }
		}
		catch(HibernateException e)
		{
			exp=e;
		}
		return exp;
	}
	
	public Customerlogin_signinBean get_emailid_of_customer(String cid)
	{
		Customerlogin_signinBean ls=null;
			 System.out.println(cid);
			 session=factory.openSession();
             tx=session.beginTransaction();
             String qry="from Customerlogin_signinBean where cusid=:x ";
             Query query = session.createQuery(qry);
			 query.setString("x",cid);	
			 ls=(Customerlogin_signinBean)query.uniqueResult();
             tx.commit();
             return ls;
	}
	public  int get_cno(String cid,String eid)
	{
		 
			 System.out.println(cid);
			 session=factory.openSession();
             tx=session.beginTransaction();
             String qry="select max(cid) from ComplaintBean where CustID=:x and eid=:y";
             Query query = session.createQuery(qry);
			 query.setString("x",cid);	
			 query.setString("y",eid);	
			 List<Integer> no=query.list();
             tx.commit();
             int ls=no.get(0);
             return ls;
	}
}
