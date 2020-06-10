package kr.co.lifesaver.kakaoLogin.service.Impl;

import java.util.List;

import kr.co.lifesaver.kakaoLogin.service.JoinVO;


public interface DAO {
	
	public List<JoinVO> selectAll();
	public JoinVO selectOne(JoinVO vo);
	public void register(JoinVO vo);
	public void insertLaw(JoinVO vo);
	public void insertSaver(JoinVO vo);
	public void updateOne(JoinVO vo);
	public void deleteOne(String common_id);
	
	public JoinVO saverByCommonCode(String common_code);
	public JoinVO lawyerByCommonCode(String common_code);
	
}
