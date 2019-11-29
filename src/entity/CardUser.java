package entity;

public class CardUser {
	private String id,bank_card_id,hostname,pwd,status;
	private float balance,consumption_today,recent_recharge;
	public CardUser(String id, String bank_card_id, String hostname, String pwd, String status, float balance,
			float consumption_today, float recent_recharge) {
		super();
		this.id = id;
		this.bank_card_id = bank_card_id;
		this.hostname = hostname;
		this.pwd = pwd;
		this.status = status;
		this.balance = balance;
		this.consumption_today = consumption_today;
		this.recent_recharge = recent_recharge;
	}
	public CardUser() {
		// TODO Auto-generated constructor stub
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getBank_card_id() {
		return bank_card_id;
	}
	public void setBank_card_id(String bank_card_id) {
		this.bank_card_id = bank_card_id;
	}
	public String getHostname() {
		return hostname;
	}
	public void setHostname(String hostname) {
		this.hostname = hostname;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public float getBalance() {
		return balance;
	}
	public void setBalance(float balance) {
		this.balance = balance;
	}
	public float getConsumption_today() {
		return consumption_today;
	}
	public void setConsumption_today(float consumption_today) {
		this.consumption_today = consumption_today;
	}
	public float getRecent_recharge() {
		return recent_recharge;
	}
	public void setRecent_recharge(float recent_recharge) {
		this.recent_recharge = recent_recharge;
	}
	
}
