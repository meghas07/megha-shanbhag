package MyFiles;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CustomerCreator {
	private static final String SQL_INSERT = "insert into customer(firstname,lastname,phonenumber,email,password,dob)values(?,?,?,?,?,?)";
	private static final String SQL_FIND_ID = "select customerid from customer where email=?";

	public static int insertRecord(Customer customer) {
		try (Connection con = ConnectionUtil.getConnection()) {
			PreparedStatement ps = con.prepareStatement(SQL_INSERT);
			ps.setString(1, customer.getFirstName());
			ps.setString(2, customer.getLastName());
			ps.setString(3, customer.getPhoneNum());
			ps.setString(4, customer.getEmail());
			ps.setString(5, customer.getPassword());
			ps.setDate(6, customer.getDateOfBirth());
			ps.executeUpdate();

			PreparedStatement ps1 = con.prepareStatement(SQL_FIND_ID);
			ps1.setString(1, customer.getEmail());
			ResultSet rs = ps1.executeQuery();
			rs.next();
			int customerId = rs.getInt("customerid");
			System.out.println("in insert block");
			return customerId;
		} catch (SQLException ex) {
			System.out.println("reached catched block");
			ex.printStackTrace();
		}
		return -1;
	}

}
