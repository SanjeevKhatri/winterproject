package service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.ItemDao;
import dao.UserDao;
import domain.Item;
import domain.User;

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
	public Item findItemByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}
}
