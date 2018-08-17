package MyFiles;

import java.sql.Date;

public class Customer {
	private int customerId;
	private String firstName,  lastName, email, password, phoneNum;
	private java.sql.Date dateOfBirth;

	public Customer(String firstName,  String lastName, String phoneNum, String email,
			String password, Date dateOfBirth) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.password = password;
		this.phoneNum = phoneNum;
		this.dateOfBirth = dateOfBirth;
	}

	public int getCustomerId() {
		return customerId;
	}

	public String getFirstName() {
		return firstName;
	}

	
	public String getLastName() {
		return lastName;
	}

	public String getEmail() {
		return email;
	}

	public String getPassword() {
		return password;
	}

	public String getPhoneNum() {
		return phoneNum;
	}

	public java.sql.Date getDateOfBirth() {
		return dateOfBirth;
	}

}
