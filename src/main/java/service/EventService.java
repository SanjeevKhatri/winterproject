package service;

import java.util.List;

import domain.Event;
import domain.User;

public interface EventService {
	public Event findEventById(int id);
	//public User findEventByName(String name);
	public List<Event> findAll();
	public void deleteAll();
	public void delete(Event event);
	public void update(Event event,int id);
	public void save(Event event);
}
