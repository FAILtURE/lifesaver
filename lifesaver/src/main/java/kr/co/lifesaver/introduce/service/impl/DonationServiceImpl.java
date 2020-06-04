package kr.co.lifesaver.introduce.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.co.lifesaver.introduce.service.DonationService;

@Service("donationService")
public class DonationServiceImpl implements DonationService {

	@Resource(name="donationDAO")
	private DonationDAO donationDAO;
	
	
	
	
}
