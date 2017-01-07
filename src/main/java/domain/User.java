package domain;

import java.util.*;

import javax.persistence.*;

@Entity
public class User {
	
	@Id @GeneratedValue
	private int id;
	
	@ManyToOne
	@JoinTable(name = "User_Event")
	private Event event;
	
	@Temporal(TemporalType.DATE)
	private Date dob;
	
	private String name;
	
	private String email;
	@Embedded
	private Address address;
	
	@Lob
	private byte[] image;
	
	public byte[] getImage() {
		return image;
	}


	public void setImage(byte[] image) {
		this.image = image;
	}


	public Event getEvent() {
		return event;
	}


	public void setEvent(Event event) {
		this.event = event;
	}

	
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

}
