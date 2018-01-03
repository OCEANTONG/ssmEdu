package net.stxy.two.bean;

public class Course {

	private int cour_id;
	private String cour_name;
	public int getCour_id() {
		return cour_id;
	}
	public void setCour_id(int cour_id) {
		this.cour_id = cour_id;
	}
	public String getCour_name() {
		return cour_name;
	}
	public void setCour_name(String cour_name) {
		this.cour_name = cour_name;
	}
	@Override
	public String toString() {
		return "Course [cour_id=" + cour_id + ", cour_name=" + cour_name + "]";
	}
	
	
	
}
