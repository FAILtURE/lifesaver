package kr.co.lifesaver.admin.service;

public class AdminVO {
	private int ssb_situation_num;
	private String ssb_situation_local;
	private String ssb_report_time;
	private int ssb_matnum;
	private String ssb_emr_arrtime;
	private String ssb_saver_arrsstatus;
	private String ssb_emr_arrsatus;
	private String ssb_hos_arrstatus;
	private String ssb_unicare_Status;
	private String ssb_death_sign;
	private String ssb_arrest_sign;
	
	public AdminVO() {
		// TODO Auto-generated constructor stub
	}

	public AdminVO(int ssb_situation_num, String ssb_situation_local, String ssb_report_time, int ssb_matnum,
			String ssb_emr_arrtime, String ssb_saver_arrsstatus, String ssb_emr_arrsatus, String ssb_hos_arrstatus,
			String ssb_unicare_Status, String ssb_death_sign, String ssb_arrest_sign) {
		super();
		this.ssb_situation_num = ssb_situation_num;
		this.ssb_situation_local = ssb_situation_local;
		this.ssb_report_time = ssb_report_time;
		this.ssb_matnum = ssb_matnum;
		this.ssb_emr_arrtime = ssb_emr_arrtime;
		this.ssb_saver_arrsstatus = ssb_saver_arrsstatus;
		this.ssb_emr_arrsatus = ssb_emr_arrsatus;
		this.ssb_hos_arrstatus = ssb_hos_arrstatus;
		this.ssb_unicare_Status = ssb_unicare_Status;
		this.ssb_death_sign = ssb_death_sign;
		this.ssb_arrest_sign = ssb_arrest_sign;
	}

	public int getSsb_situation_num() {
		return ssb_situation_num;
	}

	public void setSsb_situation_num(int ssb_situation_num) {
		this.ssb_situation_num = ssb_situation_num;
	}

	public String getSsb_situation_local() {
		return ssb_situation_local;
	}

	public void setSsb_situation_local(String ssb_situation_local) {
		this.ssb_situation_local = ssb_situation_local;
	}

	public String getSsb_report_time() {
		return ssb_report_time;
	}

	public void setSsb_report_time(String ssb_report_time) {
		this.ssb_report_time = ssb_report_time;
	}

	public int getSsb_matnum() {
		return ssb_matnum;
	}

	public void setSsb_matnum(int ssb_matnum) {
		this.ssb_matnum = ssb_matnum;
	}

	public String getSsb_emr_arrtime() {
		return ssb_emr_arrtime;
	}

	public void setSsb_emr_arrtime(String ssb_emr_arrtime) {
		this.ssb_emr_arrtime = ssb_emr_arrtime;
	}

	public String getSsb_saver_arrsstatus() {
		return ssb_saver_arrsstatus;
	}

	public void setSsb_saver_arrsstatus(String ssb_saver_arrsstatus) {
		this.ssb_saver_arrsstatus = ssb_saver_arrsstatus;
	}

	public String getSsb_emr_arrsatus() {
		return ssb_emr_arrsatus;
	}

	public void setSsb_emr_arrsatus(String ssb_emr_arrsatus) {
		this.ssb_emr_arrsatus = ssb_emr_arrsatus;
	}

	public String getSsb_hos_arrstatus() {
		return ssb_hos_arrstatus;
	}

	public void setSsb_hos_arrstatus(String ssb_hos_arrstatus) {
		this.ssb_hos_arrstatus = ssb_hos_arrstatus;
	}

	public String getSsb_unicare_Status() {
		return ssb_unicare_Status;
	}

	public void setSsb_unicare_Status(String ssb_unicare_Status) {
		this.ssb_unicare_Status = ssb_unicare_Status;
	}

	public String getSsb_death_sign() {
		return ssb_death_sign;
	}

	public void setSsb_death_sign(String ssb_death_sign) {
		this.ssb_death_sign = ssb_death_sign;
	}

	public String getSsb_arrest_sign() {
		return ssb_arrest_sign;
	}

	public void setSsb_arrest_sign(String ssb_arrest_sign) {
		this.ssb_arrest_sign = ssb_arrest_sign;
	}
	
	
}
