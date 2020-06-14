package kr.co.lifesaver.admin.service.impl;

import java.util.List;


import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.lifesaver.admin.service.AdminService;
import kr.co.lifesaver.admin.service.HospitalLocationVO;
import kr.co.lifesaver.admin.service.SaverInfoVO;
import kr.co.lifesaver.admin.service.AEDInfoVO;
import kr.co.lifesaver.admin.service.AdminLoginVO;
import kr.co.lifesaver.admin.service.SituationStatusVO;
import kr.co.lifesaver.map.service.mapVO;

@Repository
public class AdminServiceImpl implements AdminService {
	@Inject
	SqlSession session;

	@Override
	public List<SituationStatusVO> selectAllSS() {
		
		return session.selectList("selectAllSS");
	}
	
	@Override
	public List<SituationStatusVO> selectSS(SituationStatusVO dto) {
		// TODO Auto-generated method stub
		return session.selectList("selectSSB", dto);
	}

	@Override
	public void updateSSStat(SituationStatusVO dto) {
		session.update("updateSSStat", dto);
		
	}

	@Override
	public void updateAuthPass(String saverNo) {
		session.update("updateAuthPass", saverNo);
		
	}

	@Override
	public List<SaverInfoVO> selectAllSaverinfo() {
		// TODO Auto-generated method stub
		return session.selectList("selectAllSaver");
	}

	@Override
	public List<SaverInfoVO> selectWaitAuth(int saverAuth) {
		
		return session.selectList("selectWaitAuth", saverAuth);
	}

	@Override
	public List<SaverInfoVO> selectByLifeInfo(SaverInfoVO dto) {
		
		return session.selectList("selectSaverInfo", dto);
	}

	@Override
	public void updateSaverGrades(SaverInfoVO dto) {
		session.update("updateSaverInfo", dto);
		
	}

	@Override
	public void insertHosLoc(HospitalLocationVO dto) {
		session.insert("insertHosLoc", dto);
	}

	@Override
	public List<HospitalLocationVO> selectHos(HospitalLocationVO dto) {
		
		return session.selectList("selectHosLoc", dto);
	}

	@Override
	public AdminLoginVO chkAdminLogin(AdminLoginVO dto) {
		return session.selectOne("adminLogin", dto);
	}

	@Override
	public void insertMap(mapVO vo) {
		session.insert("insertMap", vo);
		
	}

	@Override
	public void insertMatching() {
		session.insert("insertMaching");
		
	}

	@Override
	public void updateTry() {
		session.update("updateTry");
		
	}

	@Override
	public void initSituation() {
		session.insert("initSituationStat");
	}

	@Override
	public int totalSaver() {
		
		return session.selectOne("saverTotal");
	}

	@Override
	public int sumSucc() {
		
		return session.selectOne("sumSucc");
	}

	@Override
	public int todayHelp() {
		
		return session.selectOne("todayHelp");
	}

	@Override
	public void updateRev(SaverInfoVO dto) {
		
		session.update("saverAtt", dto);
	}

	@Override
	public List<AEDInfoVO> selectAllAED() {
		// TODO Auto-generated method stub
		return session.selectList("selectAllAED");
	}

	
	
	
}
