package service;

import java.util.List;

import domain.User;

public interface UserService {
	public User findUserById(int id);
	public User findUserByName(String name);
	public List<User> findAll();
	public void deleteAll();
	public void delete(User user);
	public void update(User user);
	public void save(User user);
}
