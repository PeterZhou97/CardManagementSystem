package entity;

public class AccomodationStatus {
	private String stu_id,dom_id,date_begin,status;

	public AccomodationStatus(String stu_id, String dom_id, String date_begin,String status) {
		super();
		this.stu_id = stu_id;
		this.dom_id = dom_id;
		this.date_begin = date_begin;
		this.status=status;
	}

	public AccomodationStatus() {
		// TODO Auto-generated constructor stub
	}

	public String getStu_id() {
		return stu_id;
	}

	public void setStu_id(String stu_id) {
		this.stu_id = stu_id;
	}

	public String getDom_id() {
		return dom_id;
	}

	public void setDom_id(String dom_id) {
		this.dom_id = dom_id;
	}

	public String getDate_begin() {
		return date_begin;
	}

	public void setDate_begin(String date_begin) {
		this.date_begin = date_begin;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
}
