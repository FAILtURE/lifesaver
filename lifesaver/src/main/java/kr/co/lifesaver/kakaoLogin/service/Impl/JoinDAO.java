package kr.co.lifesaver.kakaoLogin.service.Impl;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;

import kr.co.lifesaver.kakaoLogin.service.JoinVO;



public class JoinDAO implements DAO {

	// DAO는 mybaits - sql문을 실행한 최종 결과물을 받아야 함 = sqlsession 필요
	@Inject
	SqlSession ss;

	public void setSs(SqlSession ss) {
		this.ss = ss;
	}

	@Override
	public List<JoinVO> selectAll() {
		return null;
	}

	@Override
	public JoinVO selectOne(JoinVO vo) {
		return ss.selectOne("selectOne", vo);
	}

	@Override
	public void register(JoinVO vo) {
		ss.update("register", vo);
	}

	@Override
	public void insertLaw(JoinVO vo) {
		ss.insert("insertLaw", vo);
	}

	@Override
	public void insertSaver(JoinVO vo) {
		ss.insert("insertSaver", vo);
	}

	@Override
	public void updateOne(JoinVO vo) {
		
	}

	@Override
	public void deleteOne(String common_id) {
		
	}

	@Override
	public JoinVO saverByCommonCode(String common_code) {
		return ss.selectOne("saverByCommonCode", common_code);
	}

	@Override
	public JoinVO lawyerByCommonCode(String common_code) {
		return ss.selectOne("lawyerByCommonCode", common_code);
	}

}
