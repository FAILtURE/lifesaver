package kr.co.lifesaver.admin.service;

import java.util.List;

import kr.co.lifesaver.map.service.mapVO;




/**
  * @FileName : AdminService.java
  * @Project : lifesaver
  * @Date : 2020. 6. 14. 
  * @작성자 : KangHyun
  * @변경이력 :
  * @프로그램 설명 :
  */
public interface AdminService {
	
	
	/**
	  * @Method Name : selectAllSS
	  * @작성일 : 2020. 6. 14.
	  * @작성자 : KangHyun
	  * @변경이력 : 
	  * @Method 설명 :
	  * @return
	  */
	public List<SituationStatusVO> selectAllSS();
	
	/**
	  * @Method Name : selectSS
	  * @작성일 : 2020. 6. 14.
	  * @작성자 : KangHyun
	  * @변경이력 : 
	  * @Method 설명 :
	  * @param dto
	  * @return
	  */
	public List<SituationStatusVO> selectSS(SituationStatusVO dto);
	
	/**
	  * @Method Name : updateSSStat
	  * @작성일 : 2020. 6. 14.
	  * @작성자 : KangHyun
	  * @변경이력 : 
	  * @Method 설명 :
	  * @param dto
	  */
	public void updateSSStat(SituationStatusVO dto);
	
	public List<SaverInfoVO> selectAllSaverinfo();
	
	public List<SaverInfoVO> selectWaitAuth(int saverAuth);
	
	public void updateAuthPass(String saverNo);
	
	public List<SaverInfoVO> selectByLifeInfo(SaverInfoVO dto);
	
	public void updateSaverGrades(SaverInfoVO dto);
	
	public void insertHosLoc(HospitalLocationVO dto);
	
	public List<HospitalLocationVO> selectHos(HospitalLocationVO dto);
	
	public AdminLoginVO chkAdminLogin(AdminLoginVO dto);
	
	public void insertMap(mapVO vo);
	
	public void insertMatching();
	
	public void updateTry();
	
	public void initSituation();
	
	public int totalSaver();
	
	public int sumSucc();
	
	public int todayHelp();
	
	public void updateRev(SaverInfoVO dto);
	
	public List<AEDInfoVO> selectAllAED();
	
}
