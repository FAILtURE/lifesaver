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
import kr.co.lifesaver.support.service.impl.SupportService;

@Controller
public class MainController {
	
	@Inject
	AdminService lifesaverDAO;

	@Inject
	SupportService supportService;
	
	@RequestMapping(value = "/")
	public String index(Model model) {
		
		int result = lifesaverDAO.totalSaver();
		int sum = lifesaverDAO.sumSucc();
		int todayHelp = lifesaverDAO.todayHelp();	
		int totalprice = supportService.getsum();
		
		model.addAttribute("totalSaver", result);
		model.addAttribute("sum", sum);
		model.addAttribute("todayHelp", todayHelp);
		model.addAttribute("totalprice", totalprice);
		
		return "main";
	}
	
	@RequestMapping(value = "/cprpage")
	public String cprpageIndex() {
		return "subPage/cprPage";
	}
	
	@RequestMapping(value = "/lawpage")
	public String lawpageIndex() {
		return "subPage/lawPage";
	}
	
	@RequestMapping(value ="/aedinfopage")
	public String aedinfoIndex() {
		return "subPage/aedinfoPage";
	}
	
	
}
