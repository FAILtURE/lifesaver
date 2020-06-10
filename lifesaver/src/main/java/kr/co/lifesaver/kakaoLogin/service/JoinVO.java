package kr.co.lifesaver.kakaoLogin.service;

import lombok.Data;

@Data
public class JoinVO {

	// 기본 작성
	private String common_code;
	private String common_id;
	private String common_pw;
	private String common_name;
	private String common_birth;
	private String common_gender;
	private String common_phone;
	private String common_addr;

	// 세이버일 경우
	private String saver_code;
	private String saver_license;
	private String saver_job;
	private String saver_job_addr;
	private String saver_grade;
	private int saver_auth;

	// 법조인일 경우
	private String law_code;
	private String law_license;
	private int law_auth;

	// 기본 생성자
	public JoinVO() {
		// TODO Auto-generated constructor stub
	}

	// Login
	public JoinVO(String common_id, String common_pw) {
		super();
		this.common_id = common_id;
		this.common_pw = common_pw;
	}
	
	// Common
	public JoinVO(String common_id, String common_pw, String common_name, String common_birth, String common_gender,
			String common_phone, String common_addr) {
		super();
		this.common_id = common_id;
		this.common_pw = common_pw;
		this.common_name = common_name;
		this.common_birth = common_birth;
		this.common_gender = common_gender;
		this.common_phone = common_phone;
		this.common_addr = common_addr;
	}

	// Saver
	public JoinVO(String saver_license, String saver_grade, String saver_job, String saver_job_addr, int saver_auth) {
		super();
		this.saver_license = saver_license;
		this.saver_job = saver_job;
		this.saver_job_addr = saver_job_addr;
		this.saver_grade = saver_grade;

		this.saver_auth = saver_auth;
	}

	// Lawyer
	public JoinVO(String law_code, String law_license, int law_auth) {
		super();
		this.law_code = law_code;
		this.law_license = law_license;
		this.law_auth = law_auth;
	}

	
	
		

}
