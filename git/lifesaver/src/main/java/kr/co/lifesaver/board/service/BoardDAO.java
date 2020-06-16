package kr.co.lifesaver.board.service;

import java.util.List;

public interface BoardDAO {
	public List<LifeSaver_BoardVO> selectAllBoard();
	public void insertBoard(LifeSaver_BoardVO dto);
	public LifeSaver_BoardVO selectshowBoard(LifeSaver_BoardVO dto);
	public void deleteBoard(int bno);
	public void updateBoard(LifeSaver_BoardVO dto);
	
}
