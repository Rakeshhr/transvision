package transvision.db;

import java.util.List;

import transvision.entity.FormElements;

public interface TransvisionDAO {

	public boolean createform(FormElements ele);
	public List<FormElements> getAllElements();
}
