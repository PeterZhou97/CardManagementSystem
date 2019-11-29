package entity;

public class ScoreSheet {
	private String stu_id,name,subject_id,subject;
	private float score,credit;
	public ScoreSheet(String stu_id, String name, String subject_id,String subject, float score, float credit) {
		super();
		this.stu_id = stu_id;
		this.name = name;
		this.subject_id=subject_id;
		this.subject = subject;
		this.score = score;
		this.credit = credit;
	}
	public ScoreSheet() {
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
	public String getSubject_id() {
		return subject_id;
	}
	public void setSubject_id(String subject_id) {
		this.subject_id = subject_id;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public float getScore() {
		return score;
	}
	public void setScore(float score) {
		this.score = score;
	}
	public float getCredit() {
		return credit;
	}
	public void setCredit(float credit) {
		this.credit = credit;
	}
	
}
