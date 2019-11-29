package entity;

public class BankCard {
	private String bank_card_id,bankname,hostname,pwd;
	private float money;
	public BankCard(String bank_card_id, String bankname,String hostname, String pwd, float money) {
		super();
		this.bank_card_id = bank_card_id;
		this.hostname = hostname;
		this.bankname=bankname;
		this.pwd = pwd;
		this.money = money;
	}
	public BankCard() {
		// TODO Auto-generated constructor stub
	}
	public String getBank_card_id() {
		return bank_card_id;
	}
	public void setBank_card_id(String bank_card_id) {
		this.bank_card_id = bank_card_id;
	}
	public String getBankname() {
		return bankname;
	}
	public void setBankname(String bankname) {
		this.bankname = bankname;
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
	public float getMoney() {
		return money;
	}
	public void setMoney(float money) {
		this.money = money;
	}
	
}
