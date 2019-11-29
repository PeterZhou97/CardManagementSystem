package entity;

public class Book {
	private String id,name,location;
	private int storage;
	public Book(String id, String name, String location,int storage) {
		super();
		this.id = id;
		this.name = name;
		this.location=location;
		this.storage = storage;
	}
	public Book() {
		// TODO Auto-generated constructor stub
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public int getStorage() {
		return storage;
	}
	public void setStorage(int storage) {
		this.storage = storage;
	}
	
}
