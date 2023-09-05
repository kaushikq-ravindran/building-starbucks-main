package com.app.model;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
//@Table(uniqueConstraints={@UniqueConstraint(columnNames={"emailID"})})
public class User{
	
	@Id
	private String emailID;
	private String firstName;
	private String lastName;
	private int zipCode;
	private String password;
	
	public User()
	{
		
	}

	public User(String emailID, String firstName, String lastName, int zipCode, String password) {
		super();
		this.emailID = emailID;
		this.firstName = firstName;
		this.lastName = lastName;
		this.zipCode = zipCode;
		this.password = password;
	}
	
	
	public String getEmailID() {
		return emailID;
	}
	public void setEmailID(String emailID) {
		this.emailID = emailID;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public int getZipCode() {
		return zipCode;
	}
	public void setZipCode(int zipCode) {
		this.zipCode = zipCode;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "User [emailID=" + emailID + ", firstName=" + firstName + ", lastName=" + lastName + ", zipCode="
				+ zipCode + ", password=" + password + "]";
	}
}