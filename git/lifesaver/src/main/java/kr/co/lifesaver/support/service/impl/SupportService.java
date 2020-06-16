package kr.co.lifesaver.support.service.impl;

import java.util.List;

import kr.co.lifesaver.support.service.SupportVO;


public interface SupportService {
	
	public List<SupportVO> getEverything();
	public void addData(SupportVO Dto);
	public int getsum();
	public int getpeople();


}