package dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import domain.User;

@Repository
public interface ItemDao extends JpaRepository<User, String> {
	public User findByName(String name);
}

