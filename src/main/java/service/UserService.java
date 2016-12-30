package service;

import domain.User;

public interface UserService {
	public User findUserByName(String name);
}
