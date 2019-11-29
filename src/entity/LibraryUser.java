package entity;

public class LibraryUser {
	private String stu_id,name,pwd;

	public LibraryUser(String stu_id, String name, String pwd) {
		super();
		this.stu_id = stu_id;
		this.name = name;
		this.pwd = pwd;
	}

	public LibraryUser() {
		// TODO Auto-generated constructor stub
	}

	public String getStu_id() {
		return stu_id;
	}

	public void setStu_id(String stu_id) {
		this.stu_id = stu_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
}
