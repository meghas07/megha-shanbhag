package MyFiles;

public class Account {
	
	public Account() {
		super();
		
	}

	private long accountNumber;
	private int customerId;
	private String accountType;
	private float balance = 0;

	public Account( int customerId, String accountType) {
		super();
		accountNumber = System.currentTimeMillis();
		this.customerId = customerId;
		this.accountType = accountType;

	}

	public long getAccountNumber() {
		return accountNumber;
	}

	public int getCustomerId() {
		return customerId;
	}

	public String getAccountType() {
		return accountType;
	}

	public float getBalance() {
		return balance;
	}

	public void setBalance(float balance) {
		this.balance = balance;
	}

	public void setAccountNumber(long accountNumber) {
		this.accountNumber = accountNumber;
	}

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}

	public void setAccountType(String accountType) {
		this.accountType = accountType;
	}

	@Override
	public String toString() {
		return "Account [accountNumber=" + accountNumber + ", customerId=" + customerId + ", accountType=" + accountType
				+ ", balance=" + balance + "]";
	}

	

}
