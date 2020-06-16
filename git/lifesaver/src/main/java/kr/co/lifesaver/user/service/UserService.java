package kr.co.lifesaver.user.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
 

public interface UserService {
	
	/*  */
	public void setSs(SqlSession ss);
	
	/* 전체 조회 */
	public List<JoinVO> selectAll();
	
	/* 1건 조회 */
	public JoinVO selectOne(JoinVO vo);
	
	/* 유저 등록 */
	public void register(JoinVO vo);
	
	/*  */
	public void insertLaw(JoinVO vo);
	
	/*  */
	public void insertSaver(JoinVO vo);
	
	/*  */
	public void updateOne(JoinVO vo);
	
	/*  */
	public void deleteOne(String common_id);
	
	/*  */
	public JoinVO saverByCommonCode(String common_code);
	
	/*  */
	public JoinVO lawyerByCommonCode(String common_code);
	
	/* 아이디 중복체크 */
	public JoinVO selectByID(String id);
	
	/* 아이디 중복체크2 */
	public int idChk(JoinVO vo) throws Exception;
	
	/* 세이버 라이선스 중복체크 */
	public JoinVO selectByLicenseSaver(String saver_license);
	
	/* 법조인 라이선스 중복체크 */
	public JoinVO selectByLicenseLaw(String law_license);
	
	/* 세이버 라이선스 중복체크2 */
	public int sLicenseChk(String saver_license) throws Exception;
	
	/* 법조인 라이선스 중복체크2 */
	public int lLicenseChk(String law_license) throws Exception;
	
	/* 휴대폰 번호 중복체크 */
	public int phoneChk(String common_phone) throws Exception;
	
}
