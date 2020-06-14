package kr.co.lifesaver.map.service;

public class mapVO {

	private int ssb_situation_num;
	private String ssb_situation_lat;
	private String ssb_situation_lon;
	private String ssb_report_time;
	
	public mapVO() {
		// TODO Auto-generated constructor stub
	}
	
	public int getSsb_situation_num() {
		return ssb_situation_num;
	}
	public void setSsb_situation_num(int ssb_situation_num) {
		this.ssb_situation_num = ssb_situation_num;
	}
	public String getSsb_situation_lat() {
		return ssb_situation_lat;
	}
	public void setSsb_situation_lat(String ssb_situation_lat) {
		this.ssb_situation_lat = ssb_situation_lat;
	}
	public String getSsb_situation_lon() {
		return ssb_situation_lon;
	}
	public void setSsb_situation_lon(String ssb_situation_lon) {
		this.ssb_situation_lon = ssb_situation_lon;
	}
	public String getSsb_report_time() {
		return ssb_report_time;
	}
	public void setSsb_report_time(String ssb_report_time) {
		this.ssb_report_time = ssb_report_time;
	}
	public mapVO(int ssb_situation_num, String ssb_situation_lat, String ssb_situation_lon, String ssb_report_time) {
		super();
		this.ssb_situation_num = ssb_situation_num;
		this.ssb_situation_lat = ssb_situation_lat;
		this.ssb_situation_lon = ssb_situation_lon;
		this.ssb_report_time = ssb_report_time;
	}

	
	
	
	
}
