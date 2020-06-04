package kr.co.lifesaver.donation.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DonationController {

	@RequestMapping(value = "/donation")
	public String login() {
		
		return "donation/donation";
	}
	
}
