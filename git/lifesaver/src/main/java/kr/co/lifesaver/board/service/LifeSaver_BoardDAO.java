package kr.co.lifesaver.board.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class LifeSaver_BoardDAO implements BoardDAO{

	@Inject
	SqlSession session;
	
	
	@Override
	public void insertBoard(LifeSaver_BoardVO dto) {
		session.insert("insertBoard", dto);
		
	}


	@Override
	public List<LifeSaver_BoardVO> selectAllBoard() {
		
		return session.selectList("selectAllBoard");
	}


	@Override
	public LifeSaver_BoardVO selectshowBoard(LifeSaver_BoardVO dto) {
		// TODO Auto-generated method stub
		return session.selectOne("selectshowBoard" , dto);
	}

	


	@Override
	public void updateBoard(LifeSaver_BoardVO dto) {
		// TODO Auto-generated method stub
		session.update("updateBoard", dto);
		
	}


	@Override
	public void deleteBoard(int bno) {
		// TODO Auto-generated method stub
		session.delete("deleteBoard", bno);
	}


	


	
}
