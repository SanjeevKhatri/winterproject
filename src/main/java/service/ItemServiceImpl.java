package service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.ItemDao;
import domain.Item;

@Service
@Transactional
public class ItemServiceImpl implements ItemService{
	@Autowired
	ItemDao itemDao;

	@Override
	public void save(Item item) {
		itemDao.save(item);
		
	}

	@Override
	public Item findByName(String name) {
		// TODO Auto-generated method stub
		return itemDao.findByName(name);
	}

	@Override
	public void deleteItem(int id) {
		itemDao.delete(id);
		
	}
}
