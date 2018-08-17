package MyFiles;

import java.sql.*;

public class AccountCreator {
	private static final String SQL_INSERT = "insert into account(accountno,customerid,actype,balance)values(?,?,?,?)";

	public static void insertRecord(Account account) {

		try (Connection con = ConnectionUtil.getConnection()) {
			PreparedStatement ps = con.prepareStatement(SQL_INSERT);
			ps.setLong(1, account.getAccountNumber());
			ps.setInt(2, account.getCustomerId());
			ps.setString(3, account.getAccountType());
			ps.setFloat(4, account.getBalance());
			ps.execute();
		} catch (SQLException e) {

			e.printStackTrace();
		}
	}

}
