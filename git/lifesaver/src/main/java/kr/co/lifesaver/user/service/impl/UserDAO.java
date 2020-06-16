package kr.co.lifesaver.user.service.impl;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.lifesaver.user.service.JoinVO;
import kr.co.lifesaver.user.service.UserService;

 
@Repository("UserDAO")
public class UserDAO implements UserService {

	// DAO는 mybaits - sql문을 실행한 최종 결과물을 받아야 함 = sqlsession 필요
	@Inject
	SqlSession ss;

	@Override
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
		ss.insert("register", vo);
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

	@Override
	public JoinVO selectByID(String id) {
		return ss.selectOne("selectByID", id);
	}

	@Override
	public JoinVO selectByLicenseSaver(String saver_license) {
		return ss.selectOne("selectByLicenseSaver", saver_license);
	}

	@Override
	public JoinVO selectByLicenseLaw(String law_license) {
		return ss.selectOne("selectByLicenseLaw", law_license);
	}

	@Override
	public int idChk(JoinVO vo) throws Exception {
		int result = ss.selectOne("idChk", vo);
		return result;
	}

	@Override
	public int sLicenseChk(String saver_license) throws Exception {
		int result2 = ss.selectOne("sLicenseChk", saver_license);
		return result2;
		
	}

	@Override
	public int lLicenseChk(String law_license) throws Exception {
		int result2 = ss.selectOne("sLicenseChk", law_license);
		return result2;
		
	}

	@Override
	public int phoneChk(String common_phone) throws Exception {
		// TODO Auto-generated method stub
		int result3 = ss.selectOne("phoneChk", common_phone);
		return result3;
	}



}
