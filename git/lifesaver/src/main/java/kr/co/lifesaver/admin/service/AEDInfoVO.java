package kr.co.lifesaver.admin.service;

public class AEDInfoVO {
	private String AED_LOC;
	private String aed_name;
	private String aed_lati;
	private String aed_longti;
	
	public AEDInfoVO() {}

	public AEDInfoVO(String aED_LOC, String aed_name, String aed_lati, String aed_longti) {
		super();
		AED_LOC = aED_LOC;
		this.aed_name = aed_name;
		this.aed_lati = aed_lati;
		this.aed_longti = aed_longti;
	}

	public String getAED_LOC() {
		return AED_LOC;
	}

	public void setAED_LOC(String aED_LOC) {
		AED_LOC = aED_LOC;
	}

	public String getAed_name() {
		return aed_name;
	}

	public void setAed_name(String aed_name) {
		this.aed_name = aed_name;
	}

	public String getAed_lati() {
		return aed_lati;
	}

	public void setAed_lati(String aed_lati) {
		this.aed_lati = aed_lati;
	}

	public String getAed_longti() {
		return aed_longti;
	}

	public void setAed_longti(String aed_longti) {
		this.aed_longti = aed_longti;
	}
	
}
