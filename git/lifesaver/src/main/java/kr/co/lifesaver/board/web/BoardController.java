package kr.co.lifesaver.board.web;

import java.util.List;
import java.util.Map;

import javax.activation.CommandMap;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.lifesaver.board.service.BoardDAO;
import kr.co.lifesaver.board.service.LifeSaver_BoardDAO;
import kr.co.lifesaver.board.service.LifeSaver_BoardVO;

@Controller
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	@Inject
	BoardDAO dao;
	
	@RequestMapping(value = "/board")
	public String boardIndex() {
		return "/board/board";
	}
	
	@RequestMapping(value = "/blog")
	public String selectBoard(Model model) {
		List<LifeSaver_BoardVO> list = dao.selectAllBoard();
		
		model.addAttribute("list", list);
		
		return "/board/blog";
	}
	
	
	@GetMapping(value = "/boarddetail")
	public String showBoard(HttpServletRequest req, Model model) {
		
		LifeSaver_BoardVO dto = new LifeSaver_BoardVO();
		int bno = Integer.parseInt(req.getParameter("bno"));
		dto.setBno(bno);
		LifeSaver_BoardVO dto2 = dao.selectshowBoard(dto);
		//System.out.println(req.getParameter("val"));
		model.addAttribute("list", dto2);
		
		
		return "/board/boarddetail";
	}
	

	
	@RequestMapping(value = "/writeform", method = RequestMethod.GET)
	public String writeformIndex() {
		return "board/writeform";
	}
	
	@RequestMapping(value = "/writeform", method = RequestMethod.POST)
	public void writeformIndex(LifeSaver_BoardVO dto) {
		
		
		dao.insertBoard(dto);
		
	}
	
	@RequestMapping(value = "/delete")
	public String deleteBoard(LifeSaver_BoardVO dto) { 
		
		dao.deleteBoard(dto.getBno());
		return "redirect:/blog";
		
	}
	
	
	
	
	
	
}
