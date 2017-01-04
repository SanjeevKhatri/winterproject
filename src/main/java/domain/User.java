package domain;

import java.util.*;

import javax.persistence.*;

@Entity
public class User {
	@Id @GeneratedValue
	private int id;
	
	@OneToMany(mappedBy="user")
	private List<Event> events=new ArrayList<>();
	
	@Temporal(TemporalType.TIMESTAMP)
	private Date dob;
	
	private String name;

	
	private String email;
	@Embedded
	private Address address;
	
	public Date getDob() {
		return dob;
	}


	public void setDob(Date dob) {
		this.dob = dob;
	}


	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}


	public Address getAddress() {
		return address;
	}


	public void setAddress(Address address) {
		this.address = address;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}

	private String password;
	
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
	
	public List<Event> getEvents() {
		return events;
	}


	public void setEvents(List<Event> events) {
		this.events = events;
	}

}
