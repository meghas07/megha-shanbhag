package MyFiles;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



public class BankStatement {
	private static final String SQL_DISPLAY = "select * from account where accountno=?";

	public static Account bankStmt(long accountNum) {
		try (Connection con = ConnectionUtil.getConnection()) {
			PreparedStatement ps = con.prepareStatement(SQL_DISPLAY);
			ps.setLong(1, accountNum);
			ResultSet rs = ps.executeQuery();
			Account accDetails = new Account();
			while (rs.next()) {
				accDetails.setAccountNumber(accountNum);
				accDetails.setCustomerId(rs.getInt(2));
				accDetails.setAccountType(rs.getString(3));
				accDetails.setBalance(rs.getFloat(4));
				System.out.println(accDetails.toString());			
				System.out.println("success");
			}
			System.out.println("success next");
			return accDetails;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;

	}

}
