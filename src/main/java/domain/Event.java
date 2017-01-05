package domain;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.*;

@Entity
public class Event {
	
	@Id @GeneratedValue
	private int id;
	
	private String name;
	
	@Temporal(TemporalType.TIMESTAMP)
	private Date date;
	
	private String place;
	
	@OneToMany(fetch = FetchType.EAGER, mappedBy="event")
	private List<User> users=new ArrayList<>();
	
	
	@OneToMany(fetch = FetchType.EAGER, cascade=CascadeType.PERSIST)
	private List<Item> items=new ArrayList<>();
	
	
	public List<User> getUsers() {
		return users;
	}
	public void setUsers(List<User> users) {
		this.users = users;
	}
	public List<Item> getItems() {
		return items;
	}
	public void setItems(List<Item> items) {
		this.items = items;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
}
