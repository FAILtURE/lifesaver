package kr.co.lifesaver.admin.service;

public class SituationStatusVO {
	private String saver_code;
	private int ssb_situation_num;
	private String sit_emr_arrtime;
	private String sit_saver_stat;
	private String sit_emr_stat;
	private String sit_hos_arrstatus;
	private String sit_unicare_Status;
	private String sit_death_cuz;
	private String sit_arrest_cuz;
	private int sit_alive;
	
	public SituationStatusVO() {
		
	}

	public SituationStatusVO(String saver_code, int ssb_situation_num, String sit_emr_arrtime,
			String sit_saver_stat, String sit_emr_stat, String sit_hos_arrstatus, String sit_unicare_Status,
			String sit_death_cuz, String sit_arrest_cuz, int sit_alive) {
		super();
		this.saver_code = saver_code;
		this.ssb_situation_num = ssb_situation_num;
		this.sit_emr_arrtime = sit_emr_arrtime;
		this.sit_saver_stat = sit_saver_stat;
		this.sit_emr_stat = sit_emr_stat;
		this.sit_hos_arrstatus = sit_hos_arrstatus;
		this.sit_unicare_Status = sit_unicare_Status;
		this.sit_death_cuz = sit_death_cuz;
		this.sit_arrest_cuz = sit_arrest_cuz;
		this.sit_alive = sit_alive;
	}

	public String getSaver_code() {
		return saver_code;
	}

	public void setSaver_code(String saver_code) {
		this.saver_code = saver_code;
	}

	public int getSsb_situation_num() {
		return ssb_situation_num;
	}

	public void setSsb_situation_num(int ssb_situation_num) {
		this.ssb_situation_num = ssb_situation_num;
	}

	public String getSit_emr_arrtime() {
		return sit_emr_arrtime;
	}

	public void setSit_emr_arrtime(String sit_emr_arrtime) {
		this.sit_emr_arrtime = sit_emr_arrtime;
	}

	public String getSit_saver_stat() {
		return sit_saver_stat;
	}

	public void setSit_saver_stat(String sit_saver_stat) {
		this.sit_saver_stat = sit_saver_stat;
	}

	public String getSit_emr_stat() {
		return sit_emr_stat;
	}

	public void setSit_emr_stat(String sit_emr_stat) {
		this.sit_emr_stat = sit_emr_stat;
	}

	public String getSit_hos_arrstatus() {
		return sit_hos_arrstatus;
	}

	public void setSit_hos_arrstatus(String sit_hos_arrstatus) {
		this.sit_hos_arrstatus = sit_hos_arrstatus;
	}

	public String getSit_unicare_Status() {
		return sit_unicare_Status;
	}

	public void setSit_unicare_Status(String sit_unicare_Status) {
		this.sit_unicare_Status = sit_unicare_Status;
	}

	public String getSit_death_cuz() {
		return sit_death_cuz;
	}

	public void setSit_death_cuz(String sit_death_cuz) {
		this.sit_death_cuz = sit_death_cuz;
	}

	public String getSit_arrest_cuz() {
		return sit_arrest_cuz;
	}

	public void setSit_arrest_cuz(String sit_arrest_cuz) {
		this.sit_arrest_cuz = sit_arrest_cuz;
	}

	public int getSit_alive() {
		return sit_alive;
	}

	public void setSit_alive(int sit_alive) {
		this.sit_alive = sit_alive;
	}
	
	
	
}
