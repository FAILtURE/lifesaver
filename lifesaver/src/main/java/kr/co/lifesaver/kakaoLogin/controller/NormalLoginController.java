package kr.co.lifesaver.kakaoLogin.controller;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.lifesaver.kakaoLogin.service.JoinVO;
import kr.co.lifesaver.kakaoLogin.service.Impl.DAO;

@Controller
public class NormalLoginController {
	
	@Inject
	DAO dao;

	
	@RequestMapping(value = "/normalLogin")
	public String normalLogin(HttpServletRequest req ,HttpSession session) {
		
		
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		
		JoinVO vo = new JoinVO(id, pw);
		vo = dao.selectOne(vo);
		
		
		
		if(vo != null) {
			session.setAttribute("id", id);
			session.setAttribute("pw", pw);

			
			return "user/main";
		}
		return "user/login";
		
		
	}
}
