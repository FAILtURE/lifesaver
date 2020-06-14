package kr.co.lifesaver.admin.service;

public class AdminLoginVO {
	private String id;
	private String pwd;
	
	public AdminLoginVO() {
		// TODO Auto-generated constructor stub
	}
	
	public AdminLoginVO(String id, String pwd) {
		super();
		this.id = id;
		this.pwd = pwd;
	}

	public String getId() {
		return id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setId(String id) {
		this.id = id;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
}
