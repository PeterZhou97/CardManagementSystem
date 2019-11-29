package entity;

public class Books_Borrowing {
	private String stu_id,book_id,appointed_date;
	private int days;
	public Books_Borrowing(String stu_id, String book_id,String appointed_date, int days) {
		super();
		this.stu_id = stu_id;
		this.book_id = book_id;
		this.appointed_date=appointed_date;
		this.days = days;
	}
	public Books_Borrowing() {
		// TODO Auto-generated constructor stub
	}
	public String getStu_id() {
		return stu_id;
	}
	public void setStu_id(String stu_id) {
		this.stu_id = stu_id;
	}
	public String getBook_id() {
		return book_id;
	}
	public void setBook_id(String book_id) {
		this.book_id = book_id;
	}
	public String getAppointed_date() {
		return appointed_date;
	}
	public void setAppointed_date(String appointed_date) {
		this.appointed_date = appointed_date;
	}
	public int getDays() {
		return days;
	}
	public void setDays(int days) {
		this.days = days;
	}
	
}
