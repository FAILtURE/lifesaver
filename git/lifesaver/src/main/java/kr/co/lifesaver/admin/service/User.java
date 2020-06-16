package kr.co.lifesaver.admin.service;

import java.util.Date;

import lombok.Data;

@Data
//@Builder
public class User {
	private String uid;
	private String upw;
	private String uname;
	private Integer upoint;
	
	private String email;
	private String googleid;
	private String naverid;
	private String nickname;
	
	private String loginip;
	private Date lastlogin;
	
	public void setUid(String uid) {
		this.uid = uid;
	}

	public void setUpw(String upw) {
		this.upw = upw;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public void setUpoint(Integer upoint) {
		this.upoint = upoint;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setGoogleid(String googleid) {
		this.googleid = googleid;
	}

	public void setNaverid(String naverid) {
		this.naverid = naverid;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public void setLoginip(String loginip) {
		this.loginip = loginip;
	}

	public void setLastlogin(Date lastlogin) {
		this.lastlogin = lastlogin;
	}
	
	public String getUid() {
		return uid;
	}

	public String getUpw() {
		return upw;
	}

	public String getUname() {
		return uname;
	}

	public Integer getUpoint() {
		return upoint;
	}

	public String getEmail() {
		return email;
	}

	public String getGoogleid() {
		return googleid;
	}

	public String getNaverid() {
		return naverid;
	}

	public String getNickname() {
		return nickname;
	}

	public String getLoginip() {
		return loginip;
	}

	public Date getLastlogin() {
		return lastlogin;
	}

	public static void main(String[] args) {
		User user1 = new User();
		user1.setUid("1111111");
		user1.setUname("adsfasfsaf1212121");
		
		User user2 = new User();
		user2.setUid("1111111");
		user2.setUname("adsfasfsaf");
		System.out.println(user1.equals(user2));
	}
}