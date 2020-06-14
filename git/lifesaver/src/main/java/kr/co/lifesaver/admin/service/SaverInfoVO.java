package kr.co.lifesaver.admin.service;

public class SaverInfoVO {
	private String saver_code;
	private String common_code;
	private String saver_license;
	private String saver_grade;
	private String saver_job;
	private String saver_job_addr;
	private String saver_rev_try;
	private String saver_rev_succ;
	private String saver_rev_fail;
	private int saver_auth;
	
	public SaverInfoVO() {}

	public SaverInfoVO(String saver_code, String common_code, String saver_license, String saver_grade,
			String saver_job, String saver_job_addr, String saver_rev_try, String saver_rev_succ, String saver_rev_fail,
			int saver_auth) {
		super();
		this.saver_code = saver_code;
		this.common_code = common_code;
		this.saver_license = saver_license;
		this.saver_grade = saver_grade;
		this.saver_job = saver_job;
		this.saver_job_addr = saver_job_addr;
		this.saver_rev_try = saver_rev_try;
		this.saver_rev_succ = saver_rev_succ;
		this.saver_rev_fail = saver_rev_fail;
		this.saver_auth = saver_auth;
	}

	public String getSaver_code() {
		return saver_code;
	}

	public void setSaver_code(String saver_code) {
		this.saver_code = saver_code;
	}

	public String getCommon_code() {
		return common_code;
	}

	public void setCommon_code(String common_code) {
		this.common_code = common_code;
	}

	public String getSaver_license() {
		return saver_license;
	}

	public void setSaver_license(String saver_license) {
		this.saver_license = saver_license;
	}

	public String getSaver_grade() {
		return saver_grade;
	}

	public void setSaver_grade(String saver_grade) {
		this.saver_grade = saver_grade;
	}

	public String getSaver_job() {
		return saver_job;
	}

	public void setSaver_job(String saver_job) {
		this.saver_job = saver_job;
	}

	public String getSaver_job_addr() {
		return saver_job_addr;
	}

	public void setSaver_job_addr(String saver_job_addr) {
		this.saver_job_addr = saver_job_addr;
	}

	public String getSaver_rev_try() {
		return saver_rev_try;
	}

	public void setSaver_rev_try(String saver_rev_try) {
		this.saver_rev_try = saver_rev_try;
	}

	public String getSaver_rev_succ() {
		return saver_rev_succ;
	}

	public void setSaver_rev_succ(String saver_rev_succ) {
		this.saver_rev_succ = saver_rev_succ;
	}

	public String getSaver_rev_fail() {
		return saver_rev_fail;
	}

	public void setSaver_rev_fail(String saver_rev_fail) {
		this.saver_rev_fail = saver_rev_fail;
	}

	public int getSaver_auth() {
		return saver_auth;
	}

	public void setSaver_auth(int saver_auth) {
		this.saver_auth = saver_auth;
	}
	
	
	
}
