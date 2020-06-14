package kr.co.lifesaver.support.web;

import java.io.UnsupportedEncodingException;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.lifesaver.support.service.SupportVO;
import kr.co.lifesaver.support.service.impl.SupportDAO;


@Controller
public class SupportController {

	@Inject
	SupportDAO dao;
	
	public void setDao(SupportDAO dao) {
		this.dao = dao;
	}
	
	@RequestMapping(value = "/donation")
	public String list0(HttpServletRequest req, HttpSession session) {
		
		int totalprice = dao.getsum();
		
		req.setAttribute("totalprice", totalprice);
		
		return "/donation/donation";
		
	}
	
	@RequestMapping(value = "/corporation_mod")
	public String list(Model model) {
		/*
		 * List<SupportDTO> list = dao.getEverything();
		 * 
		 * model.addAttribute("list", list);
		 */
		
		return "/donation/corporation_mod";
		
		}

	@RequestMapping(value= "/corporation_mod2")
	public String list(HttpServletRequest req, HttpSession session) throws UnsupportedEncodingException {
		
		req.setCharacterEncoding("UTF-8");
		String cr_name = req.getParameter("cr_name");
		String cr_number = req.getParameter("cr_number");
		String cr_man_name = req.getParameter("cr_man_name");
		String cr_man_phone_number = req.getParameter("cr_man_phone_number");

		session.setAttribute("name", cr_name);
		session.setAttribute("number", cr_number);
		session.setAttribute("man_name", cr_man_name);
		session.setAttribute("man_phone_number", cr_man_phone_number);
		
	
		return "/donation/corporation_mod2";
		
	}
	@RequestMapping(value="/corporation_mod3")
	public String list2(HttpServletRequest req, HttpSession session) throws UnsupportedEncodingException {
		
		req.setCharacterEncoding("UTF-8");
		String cr_name = req.getParameter("cr_name");
		String cr_number = req.getParameter("cr_number");
		String cr_man_name = req.getParameter("cr_man_name");
		String cr_man_phone_number = req.getParameter("cr_man_phone_number");
		int price = Integer.parseInt(req.getParameter("price"));
		String box = req.getParameter("box");
		String box2 = req.getParameter("box2");
		
		session.setAttribute("name", cr_name);
		session.setAttribute("number", cr_number);
		session.setAttribute("man_name", cr_man_name);
		session.setAttribute("man_phone_number", cr_man_phone_number);
		session.setAttribute("price", price);
		session.setAttribute("box", box);
		session.setAttribute("box2", box2);

		
		
		
		return "/donation/corporation_mod3";
		
	}
	
	@RequestMapping(value="/corporation_mod4")
	public String list3(HttpServletRequest req, HttpSession session) throws UnsupportedEncodingException {
		
		req.setCharacterEncoding("UTF-8");
		String cr_name = req.getParameter("cr_name");
		String cr_number = req.getParameter("cr_number");
		String cr_man_name = req.getParameter("cr_man_name");
		String cr_man_phone_number = req.getParameter("cr_man_phone_number");
		int price = Integer.parseInt(req.getParameter("price"));
		String box = req.getParameter("box");
		String box2 = req.getParameter("box2");
		
		System.out.println(cr_name);
		System.out.println(cr_number);
		System.out.println(cr_man_name);
		System.out.println(cr_man_phone_number);
		System.out.println(price);
		System.out.println(box);
		System.out.println(box2);
		
		session.setAttribute("name", cr_name);
		session.setAttribute("number", cr_number);
		session.setAttribute("man_name", cr_man_name);
		session.setAttribute("man_phone_number", cr_man_phone_number);
		session.setAttribute("price", price);
		session.setAttribute("box", box);
		session.setAttribute("box2", box2);

		SupportVO dto = new SupportVO(cr_name, cr_number, cr_man_name, cr_man_phone_number, price, box, box2);
		
		
		dao.addData(dto);
		
		
		
		return "/donation/corporation_mod4";
	}


		
	
}

