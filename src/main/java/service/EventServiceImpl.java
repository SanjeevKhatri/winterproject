package service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.EventDao;
import dao.UserDao;
import domain.Event;
import domain.User;

@Service
@Transactional
public class EventServiceImpl implements EventService{
	@Autowired
	EventDao eventDao;
	@Override
	public Event findEventById(int id) {
		// TODO Auto-generated method stub
		Event event = eventDao.findById(id);
		return event;
	}
	@Override
	public List<Event> findAll() {
		// TODO Auto-generated method stub
		List<Event> events = eventDao.findAll();
		return events;
	}
	@Override
	public void deleteAll() {
		// TODO Auto-generated method stub
		eventDao.deleteAll();
	}
	@Override
	public void delete(Event event) {
		// TODO Auto-generated method stub
		eventDao.delete(event);
	}
	@Override
	public void update(Event event) {
		// TODO Auto-generated method stub
		eventDao.save(event);
	}
	@Override
	public void save(Event event) {
		// TODO Auto-generated method stub
		eventDao.save(event);
	}
	/*@Override
	public User findEventById(int id) {
		// TODO Auto-generated method stub
		return eventDao.findById(id);
	}*/
	

}
