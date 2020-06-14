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
	
}
