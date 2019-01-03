package transvision.db;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import transvision.entity.FormElements;

@Repository
@Transactional
public class TransvisionDaoHbrImpl implements TransvisionDAO{
	
	@Autowired
	SessionFactory sessionFactory;

	public boolean createform(FormElements ele) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.save(ele);
		tx.commit();
		session.close();
		return true;		
	}
	
	public List<FormElements> getAllElements() {
		Session session = sessionFactory.openSession();

		Transaction tx = session.beginTransaction();
		String hql = "FROM FormElements";
		Query query = session.createQuery(hql); 
		List<FormElements> results = query.list();
		tx.commit();
		session.close();
		return results;
		
	}
	
}
