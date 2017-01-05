package dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import domain.Event;
import domain.User;

@Repository
public interface EventDao extends JpaRepository<Event, Integer> {
	public Event findByName(String name);

	public Event findById(int id);
	
}

