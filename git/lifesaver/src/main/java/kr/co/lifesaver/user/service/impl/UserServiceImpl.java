package kr.co.lifesaver.user.service.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import kr.co.lifesaver.user.service.JoinVO;
import kr.co.lifesaver.user.service.UserService;

 
@Service("UserServiceImpl")
public class UserServiceImpl implements UserService {

	@Resource(name = "UserDAO")
	private UserDAO userDAO;

	/* set SqlSession */
	@Override
	public void setSs(SqlSession ss) {
		userDAO.setSs(ss);
	}

	/*  */
	@Override
	public List<JoinVO> selectAll() {
		return null;
	}

	/*  */
	@Override
	public JoinVO selectOne(JoinVO vo) {
		return userDAO.selectOne(vo);
	}

	/*  */
	@Override
	public void register(JoinVO vo) {
		userDAO.register(vo);
	}

	/*  */
	@Override
	public void insertLaw(JoinVO vo) {
		userDAO.insertLaw(vo);
	}

	@Override
	public void insertSaver(JoinVO vo) {
		userDAO.insertSaver(vo);
	}

	/*  */
	@Override
	public void updateOne(JoinVO vo) {
		
	}

	/*  */
	@Override
	public void deleteOne(String common_id) {
		
	}

	/*  */
	@Override
	public JoinVO saverByCommonCode(String common_code) {
		return userDAO.saverByCommonCode(common_code);
	}

	/*  */
	@Override
	public JoinVO lawyerByCommonCode(String common_code) {
		return userDAO.lawyerByCommonCode(common_code);
	}



}
