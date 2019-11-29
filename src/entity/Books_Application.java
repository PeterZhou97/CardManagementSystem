package entity;

public class Books_Application {
	private String stu_id,book_id,appointed_date,status;
	public Books_Application(String stu_id, String book_id, String appointed_date, String status) {
		super();
		this.stu_id = stu_id;
		this.book_id = book_id;
		this.appointed_date = appointed_date;
		this.status = status;
	}
	public Books_Application() {
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
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
}
