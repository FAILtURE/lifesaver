package kr.co.lifesaver.map.web;

import java.io.UnsupportedEncodingException;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.lifesaver.admin.service.AdminService;
import kr.co.lifesaver.map.service.mapVO;

@Controller
public class MapController {
	
	@Inject
	private AdminService lifeSaverDao;
	
	@RequestMapping(value = "/mapOk")
	public String test(HttpServletRequest req) throws UnsupportedEncodingException {
		
		String latitude = req.getParameter("latitude");
		String longitude = req.getParameter("longitude");
		String Hours = req.getParameter("Hours");
		String Minutes = req.getParameter("Minutes");
		String Seconds = req.getParameter("Seconds");
		
		System.out.println(latitude + longitude + Hours + Minutes + Seconds);
		
		mapVO vo = new mapVO();
		
		vo.setSsb_situation_lat(latitude);
		vo.setSsb_situation_lon(longitude);
		vo.setSsb_report_time(Hours+Minutes+Seconds);
		
		lifeSaverDao.insertMap(vo);
		
		lifeSaverDao.insertMatching();
		lifeSaverDao.updateTry();
		lifeSaverDao.initSituation();
		
		return "/main";
	}
}
