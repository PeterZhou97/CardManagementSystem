package entity;

public class Dormitory {
	private String id,dept,classs,pwd;
	private int num_available,num_present;
	public Dormitory(String id, String dept, String classs, String pwd, int num_available, int num_present) {
		super();
		this.id = id;
		this.dept = dept;
		this.classs = classs;
		this.pwd = pwd;
		this.num_available = num_available;
		this.num_present = num_present;
	}
	public Dormitory() {
		
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public String getClasss() {
		return classs;
	}
	public void setClasss(String classs) {
		this.classs = classs;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public int getNum_available() {
		return num_available;
	}
	public void setNum_available(int num_available) {
		this.num_available = num_available;
	}
	public int getNum_present() {
		return num_present;
	}
	public void setNum_present(int num_present) {
		this.num_present = num_present;
	}
	
}
