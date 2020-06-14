package kr.co.lifesaver.support.service.impl;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.lifesaver.support.service.SupportVO;


@Repository
public class SupportMysqlDAO implements SupportDAO {
	@Inject
	SqlSession ss;
	
	public void SetSs(SqlSession ss) {
		this.ss = ss;
		
	}

	@Override
	public List<SupportVO> getEverything() {
		// TODO Auto-generated method stub
		return ss.selectList("getEverything");
	}

	@Override
	public void addData(SupportVO Dto) {
		// TODO Auto-generated method stub
		ss.insert("addData", Dto);

	}

	@Override
	public int getsum() {
		// TODO Auto-generated method stub
		return ss.selectOne("getsum");
	
	}

	@Override
	public int getpeople() {
		// TODO Auto-generated method stub
		return 0;
	}
	
	

}
