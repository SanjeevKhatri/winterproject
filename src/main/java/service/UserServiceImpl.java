package service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.UserDao;
import domain.User;

@Service
@Transactional
public class UserServiceImpl implements UserService{
	@Autowired
	UserDao userDao;
	@Override
	public User findUserByName(String name) {
		// TODO Auto-generated method stub
		User user = userDao.findByName(name);
		return user;
	}
	@Override
	public List<User> findAll() {
		// TODO Auto-generated method stub
		List<User> users = userDao.findAll();
		return users;
	}
	@Override
	public void deleteAll() {
		// TODO Auto-generated method stub
		userDao.deleteAll();
	}
	@Override
	public void delete(User user) {
		// TODO Auto-generated method stub
		userDao.delete(user);
	}
	@Override
	public void update(User user) {
		// TODO Auto-generated method stub
		userDao.save(user);
	}
	@Override
	public void save(User user) {
		// TODO Auto-generated method stub
		userDao.save(user);
	}
	@Override
	public User findUserById(int id) {
		// TODO Auto-generated method stub
		return userDao.findById(id);
	}
	

}
