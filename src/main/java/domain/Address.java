package domain;

import javax.persistence.Embeddable;

@Embeddable
public class Address {

	private String city;
	private String state;
	private String zip;
	private String street;
	
	public String getStreet() {
		return street;
	}
	
	public void setStreet(String street) {
		this.street = street;
	}
	public Address(){
		//xcxcx
	}
	public Address(String street, String city, String state, String zip) {
		this.street=street;
		this.city=city;
		this.state=state;
		this.zip=zip;
		
		// TODO Auto-generated constructor stub
	}
	
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}

}
