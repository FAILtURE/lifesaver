package kr.co.lifesaver.donation.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.lifesaver.introduce.service.DonationService;

@Controller
public class DonationController {

	/*@Resource(name="donationService")
	private DonationService donationService;*/
	
	@RequestMapping(value = "/donation.do")
	public String login() {
		
		return "donation/donation";
	}
	
}
	