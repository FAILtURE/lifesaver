package kr.co.lifesaver.admin.service;

public class HospitalLocationVO {
	private String hos_code;
	private String hos_name;
	private String hos_road;
	private String hos_jiburn;

	public HospitalLocationVO() {
		// TODO Auto-generated constructor stub
	}

	public HospitalLocationVO(String hos_code, String hos_name, String hos_road, String hos_jiburn) {
		super();
		this.hos_code = hos_code;
		this.hos_name = hos_name;
		this.hos_road = hos_road;
		this.hos_jiburn = hos_jiburn;
	}

	public String getHos_code() {
		return hos_code;
	}

	public void setHos_code(String hos_code) {
		this.hos_code = hos_code;
	}

	public String getHos_name() {
		return hos_name;
	}

	public void setHos_name(String hos_name) {
		this.hos_name = hos_name;
	}

	public String getHos_road() {
		return hos_road;
	}

	public void setHos_road(String hos_road) {
		this.hos_road = hos_road;
	}

	public String getHos_jiburn() {
		return hos_jiburn;
	}

	public void setHos_jiburn(String hos_jiburn) {
		this.hos_jiburn = hos_jiburn;
	}

}
