package kr.co.lifesaver.kakaoLogin.controller;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.lifesaver.kakaoLogin.service.JoinVO;
import kr.co.lifesaver.kakaoLogin.service.KakaoAPI2;
import kr.co.lifesaver.kakaoLogin.service.Impl.DAO;

@Controller
public class RegisterController {
	
	KakaoAPI2 kakao2 = new KakaoAPI2();
	
	@Inject
	DAO dao;
	
	
	public void setDao(DAO dao) {
		this.dao = dao;
	}
	
	@RequestMapping(value = "/registerSelect")
	public String regisetSelectIndext() {
		return "selectjoin";
	}
	
	@RequestMapping(value = "/registerSaver")
	public String registerIndex() {
		return "saverjoin";
	}
		
	
	@RequestMapping(value = "/registerAuth")
	public String login(@RequestParam("code") String code, HttpSession session) {
	    String access_Token = kakao2.getAccessToken(code);
	    
	    System.out.println("로그인 성공 - 액세스 토큰 : " + access_Token);
	    HashMap<String, Object> userInfo = kakao2.getUserInfo(access_Token);
	    System.out.println("login Controller : " + userInfo);
	    
	    //    클라이언트의 이메일이 존재할 때 세션에 해당 이메일과 토큰 등록
	    if (userInfo.get("email") != null) {
	        session.setAttribute("userId", userInfo.get("email"));
	        session.setAttribute("access_Token", access_Token);
	    }
	    return "saverjoin"; // 로그인 대신에 메인으로 이동
	}
	
	
	@RequestMapping(value = "/saverjoinOK") // 서블릿 주소(주소창에 입력)
	public String registerLaw(HttpServletRequest req, HttpSession session) throws UnsupportedEncodingException {
		
		req.setCharacterEncoding("UTF-8");
		
		String saver_license = req.getParameter("saver_license");
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		String name = req.getParameter("name");
		String birth = req.getParameter("year") + req.getParameter("month") + req.getParameter("day");
		String gender = req.getParameter("checkgender");
		String phone = req.getParameter("phone");
		String address = req.getParameter("postnumber") + req.getParameter("postaddress");
		
		String jobaddr = req.getParameter("jobaddr");
		String saver_grade = req.getParameter("saver_grade");
		
		String saver_job = "";
		
			if(saver_grade.equals("1")) {
				saver_job = "의사";
			}
			else if(saver_grade.equals("2")) {
				saver_job = "간호사, 응급구조사";
			}
			else if(saver_grade.equals("3")) {
				saver_job = "의료계 종사자";
			}
			else if(saver_grade.equals("4")) {
				saver_job = "자격증 소지자";
			}
		
		JoinVO voCom = new JoinVO(id, pw, name, birth, gender, phone, address);
		dao.register(voCom);
		
		JoinVO voSav = new JoinVO(saver_license, saver_job, jobaddr, saver_grade, 0);
		voSav.setCommon_id(id);
		dao.insertSaver(voSav);
		
		session.setAttribute("id", id);
		session.setAttribute("name", name);
		session.setAttribute("saver_job", saver_job);
		
			
		return "main"; //jsp주소
		
		
	}
	
	
	
	
	
}
