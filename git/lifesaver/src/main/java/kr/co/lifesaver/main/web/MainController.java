package kr.co.lifesaver.main.web;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.lifesaver.admin.service.AdminService;

@Controller
public class MainController {
	
	@Inject
	AdminService lifesaverDAO;

	@RequestMapping(value = "/")
	public String index(Model model) {
		int result = lifesaverDAO.totalSaver();
		
		int sum = lifesaverDAO.sumSucc();
		
		int todayHelp = lifesaverDAO.todayHelp();
		
		model.addAttribute("totalSaver", result);
		
		model.addAttribute("sum", sum);
		
		model.addAttribute("todayHelp", todayHelp);
		
		return "main";
	}
	
	@RequestMapping(value = "/board")
	public String boardIndex() {
		return "board";
	}
	
	
}
