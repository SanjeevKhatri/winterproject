package service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.UserDao;
import domain.User;

@Service
@Transactional
public class ItemServiceImpl implements ItemService{
	@Autowired
	UserDao userDao;

	@Override
	public User findUserByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}


}
