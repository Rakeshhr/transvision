package transvision.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import transvision.db.TransvisionDAO;
import transvision.entity.FormElements;

@Service
public class FormService {
	
	@Autowired
	TransvisionDAO dao;
	
	public boolean createform(FormElements ele)
	{
		return dao.createform(ele);
	}
	public List<FormElements> getAllStore()
	{
		return dao.getAllElements();
	}
}
